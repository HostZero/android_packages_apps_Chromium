.class public abstract Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;
.super Ljava/lang/Object;
.source "WebsitePreferenceBridge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private static createLocalStorageInfoMap()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method private static createStorageInfoList()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static fetchLocalStorageInfo(Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge$LocalStorageInfoReadyCallback;)V
    .locals 0

    .prologue
    .line 243
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->nativeFetchLocalStorageInfo(Ljava/lang/Object;)V

    .line 244
    return-void
.end method

.method public static fetchStorageInfo(Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge$StorageInfoReadyCallback;)V
    .locals 0

    .prologue
    .line 247
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->nativeFetchStorageInfo(Ljava/lang/Object;)V

    .line 248
    return-void
.end method

.method public static getCameraInfo()Ljava/util/List;
    .locals 2

    .prologue
    .line 178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 180
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isCameraUserModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 181
    :goto_0
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->nativeGetCameraOrigins(Ljava/lang/Object;Z)V

    .line 182
    return-object v1

    .line 180
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getContentSettingsExceptions(I)Ljava/util/List;
    .locals 5

    .prologue
    .line 225
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getContentSettingsExceptions(I)Ljava/util/List;

    move-result-object v0

    .line 228
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isContentSettingManaged(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    :goto_0
    return-object v0

    .line 232
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;

    .line 235
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;->getSource()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "policy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 239
    goto :goto_0
.end method

.method public static getCookieInfo()Ljava/util/List;
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isAcceptCookiesManaged()Z

    move-result v0

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->nativeGetCookieOrigins(Ljava/lang/Object;Z)V

    .line 107
    return-object v1
.end method

.method public static getFullscreenInfo()Ljava/util/List;
    .locals 2

    .prologue
    .line 254
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isFullscreenManaged()Z

    move-result v0

    .line 255
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 256
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->nativeGetFullscreenOrigins(Ljava/lang/Object;Z)V

    .line 257
    return-object v1
.end method

.method public static getGeolocationInfo()Ljava/util/List;
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isAllowLocationUserModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 76
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->nativeGetGeolocationOrigins(Ljava/lang/Object;Z)V

    .line 78
    return-object v1

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getKeygenBlocked(Lorg/chromium/content_public/browser/WebContents;)Z
    .locals 1

    .prologue
    .line 66
    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->nativeGetKeygenBlocked(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getKeygenInfo()Ljava/util/List;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->nativeGetKeygenOrigins(Ljava/lang/Object;)V

    .line 52
    return-object v0
.end method

.method public static getMicrophoneInfo()Ljava/util/List;
    .locals 2

    .prologue
    .line 202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 206
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isMicUserModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 207
    :goto_0
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->nativeGetMicrophoneOrigins(Ljava/lang/Object;Z)V

    .line 208
    return-object v1

    .line 206
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMidiInfo()Ljava/util/List;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->nativeGetMidiOrigins(Ljava/lang/Object;)V

    .line 94
    return-object v0
.end method

.method public static getNotificationInfo()Ljava/util/List;
    .locals 1

    .prologue
    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->nativeGetNotificationOrigins(Ljava/lang/Object;)V

    .line 164
    return-object v0
.end method

.method public static getProtectedMediaIdentifierInfo()Ljava/util/List;
    .locals 1

    .prologue
    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->nativeGetProtectedMediaIdentifierOrigins(Ljava/lang/Object;)V

    .line 148
    return-object v0
.end method

.method private static insertCameraInfoIntoList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 188
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 189
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/website/CameraInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/CameraInfo;->getOrigin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/website/CameraInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/CameraInfo;->getEmbedder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    :goto_1
    return-void

    .line 188
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 194
    :cond_1
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/CameraInfo;

    invoke-direct {v0, p1, p2, v2}, Lorg/chromium/chrome/browser/preferences/website/CameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static insertCookieInfoIntoList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/CookieInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/chromium/chrome/browser/preferences/website/CookieInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method private static insertFullscreenInfoIntoList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 266
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/FullscreenInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/chromium/chrome/browser/preferences/website/FullscreenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    return-void
.end method

.method private static insertGeolocationInfoIntoList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method private static insertKeygenInfoIntoList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/KeygenInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/chromium/chrome/browser/preferences/website/KeygenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method private static insertLocalStorageInfoIntoMap(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/LocalStorageInfo;

    invoke-direct {v0, p1, p3, p4}, Lorg/chromium/chrome/browser/preferences/website/LocalStorageInfo;-><init>(Ljava/lang/String;J)V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-void
.end method

.method private static insertMicrophoneInfoIntoList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 214
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 215
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/website/MicrophoneInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/MicrophoneInfo;->getOrigin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/website/MicrophoneInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/MicrophoneInfo;->getEmbedder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    :goto_1
    return-void

    .line 214
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 220
    :cond_1
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/MicrophoneInfo;

    invoke-direct {v0, p1, p2, v2}, Lorg/chromium/chrome/browser/preferences/website/MicrophoneInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static insertMidiInfoIntoList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/MidiInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/chromium/chrome/browser/preferences/website/MidiInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method private static insertNotificationIntoList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 170
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/NotificationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/chromium/chrome/browser/preferences/website/NotificationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method

.method private static insertProtectedMediaIdentifierInfoIntoList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/ProtectedMediaIdentifierInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/chromium/chrome/browser/preferences/website/ProtectedMediaIdentifierInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method private static insertStorageInfoIntoList(Ljava/util/ArrayList;Ljava/lang/String;IJ)V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/StorageInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/preferences/website/StorageInfo;-><init>(Ljava/lang/String;IJ)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method static native nativeClearCookieData(Ljava/lang/String;)V
.end method

.method static native nativeClearLocalStorageData(Ljava/lang/String;)V
.end method

.method static native nativeClearStorageData(Ljava/lang/String;ILjava/lang/Object;)V
.end method

.method private static native nativeFetchLocalStorageInfo(Ljava/lang/Object;)V
.end method

.method private static native nativeFetchStorageInfo(Ljava/lang/Object;)V
.end method

.method private static native nativeGetCameraOrigins(Ljava/lang/Object;Z)V
.end method

.method static native nativeGetCameraSettingForOrigin(Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method private static native nativeGetCookieOrigins(Ljava/lang/Object;Z)V
.end method

.method static native nativeGetCookieSettingForOrigin(Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method private static native nativeGetFullscreenOrigins(Ljava/lang/Object;Z)V
.end method

.method static native nativeGetFullscreenSettingForOrigin(Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method private static native nativeGetGeolocationOrigins(Ljava/lang/Object;Z)V
.end method

.method static native nativeGetGeolocationSettingForOrigin(Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method private static native nativeGetKeygenBlocked(Ljava/lang/Object;)Z
.end method

.method private static native nativeGetKeygenOrigins(Ljava/lang/Object;)V
.end method

.method static native nativeGetKeygenSettingForOrigin(Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method private static native nativeGetMicrophoneOrigins(Ljava/lang/Object;Z)V
.end method

.method static native nativeGetMicrophoneSettingForOrigin(Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method private static native nativeGetMidiOrigins(Ljava/lang/Object;)V
.end method

.method static native nativeGetMidiSettingForOrigin(Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method private static native nativeGetNotificationOrigins(Ljava/lang/Object;)V
.end method

.method static native nativeGetNotificationSettingForOrigin(Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method private static native nativeGetProtectedMediaIdentifierOrigins(Ljava/lang/Object;)V
.end method

.method static native nativeGetProtectedMediaIdentifierSettingForOrigin(Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method static native nativeIsContentSettingsPatternValid(Ljava/lang/String;)Z
.end method

.method static native nativeSetCameraSettingForOrigin(Ljava/lang/String;Ljava/lang/String;IZ)V
.end method

.method static native nativeSetCookieSettingForOrigin(Ljava/lang/String;Ljava/lang/String;IZ)V
.end method

.method static native nativeSetFullscreenSettingForOrigin(Ljava/lang/String;Ljava/lang/String;IZ)V
.end method

.method public static native nativeSetGeolocationSettingForOrigin(Ljava/lang/String;Ljava/lang/String;IZ)V
.end method

.method static native nativeSetKeygenSettingForOrigin(Ljava/lang/String;Ljava/lang/String;IZ)V
.end method

.method static native nativeSetMicrophoneSettingForOrigin(Ljava/lang/String;Ljava/lang/String;IZ)V
.end method

.method static native nativeSetMidiSettingForOrigin(Ljava/lang/String;Ljava/lang/String;IZ)V
.end method

.method static native nativeSetNotificationSettingForOrigin(Ljava/lang/String;Ljava/lang/String;IZ)V
.end method

.method static native nativeSetProtectedMediaIdentifierSettingForOrigin(Ljava/lang/String;Ljava/lang/String;IZ)V
.end method

.method static native nativeUrlMatchesContentSettingsPattern(Ljava/lang/String;Ljava/lang/String;)Z
.end method
