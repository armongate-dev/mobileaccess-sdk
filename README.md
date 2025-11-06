# Armongate Mobile Access SDK - Kurulum Kılavuzu

Bu dokümanda Armongate Mobile Access SDK'nın iOS ve Android projelerinize nasıl entegre edileceği açıklanmaktadır.

## 📋 İçindekiler

- [Sistem Gereksinimleri](#-sistem-gereksinimleri)
- [Android Kurulumu](#-android-kurulumu)
- [iOS Kurulumu](#-ios-kurulumu)
- [SDK Başlatma](#-sdk-başlatma)
- [API Referansı](#-api-referansı)
- [Sorun Giderme](#-sorun-giderme)

---

## 🖥️ Sistem Gereksinimleri

### Android
- **Minimum SDK**: 23 (Android 6.0)
- **Target SDK**: 34 (Android 14)
- **Dil Desteği**: Java 8+ veya Kotlin

### iOS
- **iOS Deployment Target**: 13.1 veya üzeri
- **Dil Desteği**: Swift veya Objective-C

---

## 📱 Android Kurulumu

### 1. Dependency Ekleme

**app/build.gradle:**

```gradle
android {
    compileSdk 34
    
    defaultConfig {
        minSdk 23
        targetSdk 34
        multiDexEnabled true
    }
    
    compileOptions {
        sourceCompatibility JavaVersion.VERSION_1_8
        targetCompatibility JavaVersion.VERSION_1_8
    }
}

dependencies {
    implementation 'com.armongate:mobile-access-sdk:1.0.0-rc.1'
}
```

### 2. AndroidManifest.xml

**Not:** SDK içerisindeki tüm gerekli izinler (`BLUETOOTH`, `BLUETOOTH_ADMIN`, `BLUETOOTH_SCAN`, `BLUETOOTH_CONNECT`, `ACCESS_FINE_LOCATION`, `ACCESS_COARSE_LOCATION`, `NFC`) otomatik olarak merge edilir. Son kullanıcının AndroidManifest.xml dosyasına bu izinleri eklemesine **gerek yoktur**.

Ancak, eğer özel bir durumunuz varsa veya izinleri manuel olarak kontrol etmek istiyorsanız, aşağıdaki izinleri ekleyebilirsiniz:

```xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android">
    
    <!-- Bluetooth Yetkileri (SDK tarafından otomatik merge edilir) -->
    <uses-permission android:name="android.permission.BLUETOOTH" />
    <uses-permission android:name="android.permission.BLUETOOTH_ADMIN" />
    
    <!-- Android 12+ (API 31+) - SDK tarafından otomatik merge edilir -->
    <uses-permission android:name="android.permission.BLUETOOTH_SCAN" 
        android:usesPermissionFlags="neverForLocation" />
    <uses-permission android:name="android.permission.BLUETOOTH_CONNECT" />
    
    <!-- Location (BLE scanning için gerekli, GPS takibi/kaydı yapılmaz) - SDK tarafından otomatik merge edilir -->
    <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
    <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
    
    <!-- Opsiyonel: NFC HCE - SDK tarafından otomatik merge edilir -->
    <uses-permission android:name="android.permission.NFC" />
    <uses-feature android:name="android.hardware.nfc.hce" android:required="false" />
</manifest>
```

### 3. Runtime Permissions

**Önemli:** AndroidManifest.xml'deki izinler otomatik merge edilir, ancak Android 6.0+ (API 23+) ve Android 12+ (API 31+) için runtime'da kullanıcıdan izin istenmesi **zorunludur**. Aşağıdaki kod örneğini kullanarak runtime permission isteyin:

```java
import android.Manifest;
import android.content.pm.PackageManager;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import android.os.Build;

public class MainActivity extends AppCompatActivity {
    private static final int PERMISSION_REQUEST_CODE = 1001;
    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestPermissions();
    }
    
    private void requestPermissions() {
        List<String> permissions = new ArrayList<>();
        
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            permissions.add(Manifest.permission.BLUETOOTH_SCAN);
            permissions.add(Manifest.permission.BLUETOOTH_CONNECT);
        } else {
            permissions.add(Manifest.permission.BLUETOOTH);
            permissions.add(Manifest.permission.BLUETOOTH_ADMIN);
        }
        
        permissions.add(Manifest.permission.ACCESS_FINE_LOCATION);
        permissions.add(Manifest.permission.ACCESS_COARSE_LOCATION);
        
        List<String> toRequest = new ArrayList<>();
        for (String permission : permissions) {
            if (ContextCompat.checkSelfPermission(this, permission) 
                    != PackageManager.PERMISSION_GRANTED) {
                toRequest.add(permission);
            }
        }
        
        if (!toRequest.isEmpty()) {
            ActivityCompat.requestPermissions(this, 
                toRequest.toArray(new String[0]), PERMISSION_REQUEST_CODE);
        } else {
            initializeSDK();
        }
    }
    
    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        if (requestCode == PERMISSION_REQUEST_CODE) {
            boolean allGranted = true;
            for (int result : grantResults) {
                if (result != PackageManager.PERMISSION_GRANTED) {
                    allGranted = false;
                    break;
                }
            }
            if (allGranted) {
                initializeSDK();
            }
        }
    }
    
    private void initializeSDK() {
        // SDK başlatma - aşağıdaki bölüme bakın
    }
}
```

---

## 🍎 iOS Kurulumu

### 1. Swift Package Manager

**Xcode:**
1. **File > Add Package Dependencies...**
2. URL: `https://github.com/armongate-dev/mobileaccess-sdk`
3. Version: `Branch: main`

**Package.swift:**
```swift
dependencies: [
    .package(url: "https://github.com/armongate-dev/mobileaccess-sdk", branch: "main")
]
```

Not: SPM ile eklenen `ArmongateMobileAccessSDK` paketi, çekirdek paket olan `ArmongateMobileAccessCore` bağımlılığını otomatik olarak indirir ve projeye dahil eder. Versiyon geçişlerinde yalnızca `ArmongateMobileAccessSDK` paketini güncellemeniz yeterlidir; çekirdek paket otomatik olarak eşleşen sürüme güncellenecektir.

### 2. Info.plist

**Info.plist:**

```xml
<dict>
    <!-- Bluetooth -->
    <key>NSBluetoothAlwaysUsageDescription</key>
    <string>Bluetooth erişim kontrol cihazlarıyla iletişim kurmak için kullanılır</string>
    
    <key>NSBluetoothPeripheralUsageDescription</key>
    <string>Bluetooth cihazlarıyla bağlantı kurmak için gereklidir</string>
        
    <!-- Background Modes -->
    <key>UIBackgroundModes</key>
    <array>
        <string>bluetooth-central</string>
    </array>
</dict>
```

### 3. Capabilities

**Xcode > Signing & Capabilities:**
- **Background Modes** → ✅ Uses Bluetooth LE accessories


---

## 🚀 SDK Başlatma

### iOS

```swift
import ArmongateMobileAccessSDK

class ViewController: UIViewController, ArmongateMobileAccessDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let config = SDKConfig(
            organizationId: "your-organization-id",
            userId: "user-unique-id",
            clientId: "your-client-id",
            clientSecret: "your-client-secret",
            delegate: self
        )
        
        ArmongateMobileAccess.shared.initialize(with: config)
    }
    
    func sdkSyncStatusChanged(_ status: SDKSyncStatus, message: String?) {
        if status == .success {
            ArmongateMobileAccess.shared.startBLE()
        }
    }
    
    func sdkDidEncounterError(_ error: SDKError, message: String) {
        print("Hata: \(message)")
    }
}
```

### Android

```java
import com.armongate.voram.sdk.ArmongateMobileAccess;
import com.armongate.voram.sdk.delegate.ArmongateMobileAccessDelegate;
import com.armongate.voram.sdk.enums.SDKSyncStatus;
import com.armongate.voram.sdk.models.SDKConfig;

public class MainActivity extends AppCompatActivity implements ArmongateMobileAccessDelegate {
    
    private ArmongateMobileAccess sdk;
    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
        SDKConfig config = new SDKConfig(
            "your-organization-id",
            "user-unique-id",
            "your-client-id",
            "your-client-secret",
            this
        );
        
        sdk = ArmongateMobileAccess.getInstance();
        sdk.initialize(getApplicationContext(), config);
    }
    
    @Override
    public void onSyncStatusChanged(SDKSyncStatus status, String message) {
        if (status == SDKSyncStatus.SUCCESS) {
            sdk.startBLE();
        }
    }
    
    @Override
    public void onError(SDKError error, String message) {
        Log.e("SDK", "Hata: " + message);
    }
}
```

### Sync Mekanizması

SDK başlatıldığında otomatik olarak:
1. İletişim modülü hazır hale getirilir
1. Storage verileri yüklenir
2. Kullanıcı kaydı yapılır (ilk kullanımdaysa veya kullanıcı id değeri değişmişse)
3. Erişim listesi senkronize edilir

Sync durumunu `ArmongateMobileAccessDelegate` ile takip edin:

```swift
// iOS
func sdkSyncStatusChanged(_ status: SDKSyncStatus, message: String?) {
    switch status {
    case .inProgress: // Senkronizasyon devam ediyor
    case .success:    // Senkronizasyon başarılı - Mobil kimlik oluştu ve erişim listesi hazır
    case .failed:     // Senkronizasyon başarısız
    }
}
```

```java
// Android
@Override
public void onSyncStatusChanged(SDKSyncStatus status, String message) {
    switch (status) {
        case IN_PROGRESS: // Senkronizasyon başladı
        case SUCCESS:     // Senkronizasyon başarılı - Mobil kimlik oluştu ve erişim listesi hazır
        case FAILED:      // Senkronizasyon başarısız
    }
}
```

---

## 📚 API Referansı

### iOS

#### `ArmongateMobileAccess.shared`

- `initialize(with config: SDKConfig)` - SDK'yı başlatır (otomatik sync başlar)
- `isInitialized: Bool` - SDK durumu
- `startBLE()` - BLE taramayı başlatır
- `getQRCode() -> String?` - QR kod içeriği oluşturur
- `getLogs() -> [String]` - SDK kritik loglarını döner
- `shutdown()` - SDK'yı kapatır
- `getVersion() -> String` - SDK versiyonunu döner
- `sync()` - Kullanıcı mobil kimliği ve erişim listesi senkronizasyonunu tetikler

#### `SDKConfig`

```swift
SDKConfig(
    // Zorunlu - Armongate tarafından paylaşılacaktır
    organizationId: String,    

    // Zorunlu - Kullanıcının Armongate sisteminde tanımlı tekil değeri; Personel Numarası, T.C. Kimlik Numarası vs.
    userId: String,            
    
    // Zorunlu - Armongate tarafından paylaşılacaktır
    clientId: String, 

    // Zorunlu - Armongate tarafından paylaşılacaktır
    clientSecret: String, 

    // SDK geri bildirimlerini dinlemek için
    delegate: ArmongateMobileAccessDelegate? = nil,

    // Loglama amaçlı
    debugMode: Bool = false,

    // OnPremise sunucular için özel adres bilgisi / Varsayılan: https://api.armongate.com/
    customEndpoint: String? = nil 
)
```

### Android

#### `ArmongateMobileAccess.getInstance()`

- `initialize(Context context, SDKConfig config)` - SDK'yı başlatır (otomatik sync başlar)
- `isInitialized() -> Boolean` - SDK durumu
- `startBLE()` - BLE taramayı başlatır
- `startNFC()` - NFC HCE'yi başlatır (Android)
- `getQRCode() -> String?` - QR kod içeriği
- `getLogs() -> List<String>` - SDK logları
- `shutdown()` - SDK'yı kapatır
- `getVersion() -> String` - SDK versiyonunu döner
- `sync()` - Kullanıcı mobil kimliği ve erişim listesi senkronizasyonunu tetikler

#### `SDKConfig`

```java
// Basit
new SDKConfig(organizationId, userId, clientId, clientSecret)

// Delegate ile
new SDKConfig(organizationId, userId, clientId, clientSecret, delegate)

// Tüm parametrelerle
new SDKConfig(organizationId, userId, clientId, clientSecret, 
              delegate, debugMode, customEndpoint)


// Parametreler

public class SDKConfig {
    
    // Zorunlu - Armongate tarafından paylaşılacaktır
    private final String organizationId;

    // Zorunlu - Kullanıcının Armongate sisteminde tanımlı tekil değeri; Personel Numarası, T.C. Kimlik Numarası vs.
    private final String userId;

    // Zorunlu - Armongate tarafından paylaşılacaktır
    private final String clientId;

    // Zorunlu - Armongate tarafından paylaşılacaktır
    private final String clientSecret;

    // SDK geri bildirimlerini dinlemek için
    private final ArmongateMobileAccessDelegate delegate;

    // Loglama amaçlı
    private final boolean debugMode;

    // OnPremise sunucular için özel adres bilgisi / Varsayılan: https://api.armongate.com/
    private final String customEndpoint;

    // ...
}

```

### Delegate

#### iOS

```swift
protocol ArmongateMobileAccessDelegate {
    func sdkSyncStatusChanged(_ status: SDKSyncStatus, message: String?)
    func sdkDidEncounterError(_ error: SDKError, message: String)
}
```

#### Android

```java
interface ArmongateMobileAccessDelegate {
    void onSyncStatusChanged(SDKSyncStatus status, String message);
    void onError(SDKError error, String message);
}
```

---

## ❓ Sorun Giderme

### Build Hataları

**Android:**
- `Failed to resolve`: Gradle sync yapın
- `MultiDex`: `multiDexEnabled true` kontrol edin

**iOS:**
- `Module not found`: Package'ın eklendiğinden emin olun
- **Product > Clean Build Folder** (Cmd + Shift + K)

### Runtime Hataları

**Permission:**
- AndroidManifest.xml ve Info.plist'i kontrol edin
- Runtime permission istediğinizden emin olun

**Bluetooth:**
- Bluetooth'un açık olduğundan emin olun
- Location servislerinin aktif olduğundan emin olun (Android)
- BLE yetkilerinin verildiğinden emin olun

**Sync:**
- İnternet bağlantısını kontrol edin
- Konfigürasyon parametrelerinin doğru olduğundan emin olun
- Debug modunda logları kontrol edin

---

## 📞 Destek

- **Email**: devops@armongate.com
- **Website**: https://www.armongate.com

---

**Versiyon**: 1.0.0-rc.1  
**Endpoint**: https://api.armongate.com/
