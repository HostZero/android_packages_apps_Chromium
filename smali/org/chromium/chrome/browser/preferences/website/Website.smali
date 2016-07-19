.class public Lorg/chromium/chrome/browser/preferences/website/Website;
.super Ljava/lang/Object;
.source "Website.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final CAMERA_ACCESS_ALLOWED:I = 0x1

.field static final CAMERA_ACCESS_DENIED:I = 0x4

.field static final INVALID_CAMERA_OR_MICROPHONE_ACCESS:I = 0x0

.field static final MICROPHONE_ACCESS_ALLOWED:I = 0x3

.field static final MICROPHONE_ACCESS_DENIED:I = 0x6

.field static final MICROPHONE_AND_CAMERA_ACCESS_ALLOWED:I = 0x2

.field static final MICROPHONE_AND_CAMERA_ACCESS_DENIED:I = 0x5


# instance fields
.field private final mAddress:Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

.field private mCameraInfo:Lorg/chromium/chrome/browser/preferences/website/CameraInfo;

.field private mCookieInfo:Lorg/chromium/chrome/browser/preferences/website/CookieInfo;

.field private mFullscreenInfo:Lorg/chromium/chrome/browser/preferences/website/FullscreenInfo;

.field private mGeolocationInfo:Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;

.field private mJavaScriptException:Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;

.field private mKeygenInfo:Lorg/chromium/chrome/browser/preferences/website/KeygenInfo;

.field private mLocalStorageInfo:Lorg/chromium/chrome/browser/preferences/website/LocalStorageInfo;

.field private mMicrophoneInfo:Lorg/chromium/chrome/browser/preferences/website/MicrophoneInfo;

.field private mMidiInfo:Lorg/chromium/chrome/browser/preferences/website/MidiInfo;

.field private mNotificationInfo:Lorg/chromium/chrome/browser/preferences/website/NotificationInfo;

.field private mPopupException:Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;

.field private mProtectedMediaIdentifierInfo:Lorg/chromium/chrome/browser/preferences/website/ProtectedMediaIdentifierInfo;

.field private final mStorageInfo:Ljava/util/List;

.field private mStorageInfoCallbacksLeft:I

.field private mSummary:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mStorageInfo:Ljava/util/List;

    .line 45
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mAddress:Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    .line 46
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mTitle:Ljava/lang/String;

    .line 47
    return-void
.end method

.method static synthetic access$006(Lorg/chromium/chrome/browser/preferences/website/Website;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mStorageInfoCallbacksLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mStorageInfoCallbacksLeft:I

    return v0
.end method


# virtual methods
.method public addStorageInfo(Lorg/chromium/chrome/browser/preferences/website/StorageInfo;)V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mStorageInfo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    return-void
.end method

.method public clearAllStoredData(Lorg/chromium/chrome/browser/preferences/website/Website$StoredDataClearedCallback;)V
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mLocalStorageInfo:Lorg/chromium/chrome/browser/preferences/website/LocalStorageInfo;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mLocalStorageInfo:Lorg/chromium/chrome/browser/preferences/website/LocalStorageInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/LocalStorageInfo;->clear()V

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mLocalStorageInfo:Lorg/chromium/chrome/browser/preferences/website/LocalStorageInfo;

    .line 388
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mStorageInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mStorageInfoCallbacksLeft:I

    .line 389
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mStorageInfoCallbacksLeft:I

    if-lez v0, :cond_2

    .line 390
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mStorageInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/website/StorageInfo;

    .line 391
    new-instance v2, Lorg/chromium/chrome/browser/preferences/website/Website$1;

    invoke-direct {v2, p0, p1}, Lorg/chromium/chrome/browser/preferences/website/Website$1;-><init>(Lorg/chromium/chrome/browser/preferences/website/Website;Lorg/chromium/chrome/browser/preferences/website/Website$StoredDataClearedCallback;)V

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/preferences/website/StorageInfo;->clear(Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge$StorageInfoClearedCallback;)V

    goto :goto_0

    .line 398
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mStorageInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 402
    :goto_1
    return-void

    .line 400
    :cond_2
    invoke-interface {p1}, Lorg/chromium/chrome/browser/preferences/website/Website$StoredDataClearedCallback;->onStoredDataCleared()V

    goto :goto_1
.end method

.method public compareByAddressTo(Lorg/chromium/chrome/browser/preferences/website/Website;)I
    .locals 2

    .prologue
    .line 62
    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mAddress:Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    iget-object v1, p1, Lorg/chromium/chrome/browser/preferences/website/Website;->mAddress:Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->compareTo(Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;)I

    move-result v0

    goto :goto_0
.end method

.method public compareByStorageTo(Lorg/chromium/chrome/browser/preferences/website/Website;)I
    .locals 4

    .prologue
    .line 70
    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/Website;->getTotalUsage()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/Website;->getTotalUsage()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/util/MathUtils;->compareLongs(JJ)I

    move-result v0

    goto :goto_0
.end method

.method public getAddress()Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mAddress:Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    return-object v0
.end method

.method public getCameraInfo()Lorg/chromium/chrome/browser/preferences/website/CameraInfo;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mCameraInfo:Lorg/chromium/chrome/browser/preferences/website/CameraInfo;

    return-object v0
.end method

.method public getCameraPermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mCameraInfo:Lorg/chromium/chrome/browser/preferences/website/CameraInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mCameraInfo:Lorg/chromium/chrome/browser/preferences/website/CameraInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/CameraInfo;->getContentSetting()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCookieInfo()Lorg/chromium/chrome/browser/preferences/website/CookieInfo;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mCookieInfo:Lorg/chromium/chrome/browser/preferences/website/CookieInfo;

    return-object v0
.end method

.method public getCookiePermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mCookieInfo:Lorg/chromium/chrome/browser/preferences/website/CookieInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mCookieInfo:Lorg/chromium/chrome/browser/preferences/website/CookieInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/CookieInfo;->getContentSetting()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFullscreenInfo()Lorg/chromium/chrome/browser/preferences/website/FullscreenInfo;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mFullscreenInfo:Lorg/chromium/chrome/browser/preferences/website/FullscreenInfo;

    return-object v0
.end method

.method public getFullscreenPermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mFullscreenInfo:Lorg/chromium/chrome/browser/preferences/website/FullscreenInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mFullscreenInfo:Lorg/chromium/chrome/browser/preferences/website/FullscreenInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/FullscreenInfo;->getContentSetting()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGeolocationInfo()Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mGeolocationInfo:Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;

    return-object v0
.end method

.method public getGeolocationPermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mGeolocationInfo:Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mGeolocationInfo:Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;->getContentSetting()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getJavaScriptPermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mJavaScriptException:Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mJavaScriptException:Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;->getContentSetting()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeygenInfo()Lorg/chromium/chrome/browser/preferences/website/KeygenInfo;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mKeygenInfo:Lorg/chromium/chrome/browser/preferences/website/KeygenInfo;

    return-object v0
.end method

.method public getKeygenPermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mKeygenInfo:Lorg/chromium/chrome/browser/preferences/website/KeygenInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mKeygenInfo:Lorg/chromium/chrome/browser/preferences/website/KeygenInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/KeygenInfo;->getContentSetting()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocalStorageInfo()Lorg/chromium/chrome/browser/preferences/website/LocalStorageInfo;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mLocalStorageInfo:Lorg/chromium/chrome/browser/preferences/website/LocalStorageInfo;

    return-object v0
.end method

.method public getMicrophoneInfo()Lorg/chromium/chrome/browser/preferences/website/MicrophoneInfo;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mMicrophoneInfo:Lorg/chromium/chrome/browser/preferences/website/MicrophoneInfo;

    return-object v0
.end method

.method public getMicrophonePermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mMicrophoneInfo:Lorg/chromium/chrome/browser/preferences/website/MicrophoneInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mMicrophoneInfo:Lorg/chromium/chrome/browser/preferences/website/MicrophoneInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/MicrophoneInfo;->getContentSetting()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMidiInfo()Lorg/chromium/chrome/browser/preferences/website/MidiInfo;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mMidiInfo:Lorg/chromium/chrome/browser/preferences/website/MidiInfo;

    return-object v0
.end method

.method public getMidiPermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mMidiInfo:Lorg/chromium/chrome/browser/preferences/website/MidiInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mMidiInfo:Lorg/chromium/chrome/browser/preferences/website/MidiInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/MidiInfo;->getContentSetting()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNotificationInfo()Lorg/chromium/chrome/browser/preferences/website/NotificationInfo;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mNotificationInfo:Lorg/chromium/chrome/browser/preferences/website/NotificationInfo;

    return-object v0
.end method

.method public getNotificationPermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mNotificationInfo:Lorg/chromium/chrome/browser/preferences/website/NotificationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mNotificationInfo:Lorg/chromium/chrome/browser/preferences/website/NotificationInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/NotificationInfo;->getContentSetting()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPopupPermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mPopupException:Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mPopupException:Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;->getContentSetting()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v0

    .line 238
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProtectedMediaIdentifierInfo()Lorg/chromium/chrome/browser/preferences/website/ProtectedMediaIdentifierInfo;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mProtectedMediaIdentifierInfo:Lorg/chromium/chrome/browser/preferences/website/ProtectedMediaIdentifierInfo;

    return-object v0
.end method

.method public getProtectedMediaIdentifierPermission()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mProtectedMediaIdentifierInfo:Lorg/chromium/chrome/browser/preferences/website/ProtectedMediaIdentifierInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mProtectedMediaIdentifierInfo:Lorg/chromium/chrome/browser/preferences/website/ProtectedMediaIdentifierInfo;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/ProtectedMediaIdentifierInfo;->getContentSetting()Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStorageInfo()Ljava/util/List;
    .locals 2

    .prologue
    .line 380
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mStorageInfo:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalUsage()J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 412
    .line 413
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mLocalStorageInfo:Lorg/chromium/chrome/browser/preferences/website/LocalStorageInfo;

    if-eqz v2, :cond_0

    .line 414
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mLocalStorageInfo:Lorg/chromium/chrome/browser/preferences/website/LocalStorageInfo;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/website/LocalStorageInfo;->getSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 416
    :cond_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mStorageInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/website/StorageInfo;

    .line 417
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/StorageInfo;->getSize()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 418
    goto :goto_0

    .line 419
    :cond_1
    return-wide v2
.end method

.method public setCameraInfo(Lorg/chromium/chrome/browser/preferences/website/CameraInfo;)V
    .locals 1

    .prologue
    .line 313
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mCameraInfo:Lorg/chromium/chrome/browser/preferences/website/CameraInfo;

    .line 314
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/CameraInfo;->getEmbedder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->create(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mSummary:Ljava/lang/String;

    .line 318
    :cond_0
    return-void
.end method

.method public setCameraPermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mCameraInfo:Lorg/chromium/chrome/browser/preferences/website/CameraInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mCameraInfo:Lorg/chromium/chrome/browser/preferences/website/CameraInfo;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/preferences/website/CameraInfo;->setContentSetting(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    .line 365
    :cond_0
    return-void
.end method

.method public setCookieInfo(Lorg/chromium/chrome/browser/preferences/website/CookieInfo;)V
    .locals 1

    .prologue
    .line 78
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mCookieInfo:Lorg/chromium/chrome/browser/preferences/website/CookieInfo;

    .line 79
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/CookieInfo;->getEmbedder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->create(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mSummary:Ljava/lang/String;

    .line 83
    :cond_0
    return-void
.end method

.method public setCookiePermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mCookieInfo:Lorg/chromium/chrome/browser/preferences/website/CookieInfo;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mCookieInfo:Lorg/chromium/chrome/browser/preferences/website/CookieInfo;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/preferences/website/CookieInfo;->setContentSetting(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    .line 103
    :cond_0
    return-void
.end method

.method public setFullscreenInfo(Lorg/chromium/chrome/browser/preferences/website/FullscreenInfo;)V
    .locals 1

    .prologue
    .line 428
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mFullscreenInfo:Lorg/chromium/chrome/browser/preferences/website/FullscreenInfo;

    .line 429
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/FullscreenInfo;->getEmbedder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->create(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    move-result-object v0

    .line 430
    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mSummary:Ljava/lang/String;

    .line 433
    :cond_0
    return-void
.end method

.method public setFullscreenPermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mFullscreenInfo:Lorg/chromium/chrome/browser/preferences/website/FullscreenInfo;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mFullscreenInfo:Lorg/chromium/chrome/browser/preferences/website/FullscreenInfo;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/preferences/website/FullscreenInfo;->setContentSetting(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    .line 458
    :cond_0
    return-void
.end method

.method public setGeolocationInfo(Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;)V
    .locals 1

    .prologue
    .line 109
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mGeolocationInfo:Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;

    .line 110
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;->getEmbedder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->create(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mSummary:Ljava/lang/String;

    .line 114
    :cond_0
    return-void
.end method

.method public setGeolocationPermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mGeolocationInfo:Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mGeolocationInfo:Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/preferences/website/GeolocationInfo;->setContentSetting(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    .line 134
    :cond_0
    return-void
.end method

.method public setJavaScriptException(Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mJavaScriptException:Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;

    .line 220
    return-void
.end method

.method public setJavaScriptPermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mJavaScriptException:Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mJavaScriptException:Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;->setContentSetting(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    .line 213
    :cond_0
    return-void
.end method

.method public setKeygenInfo(Lorg/chromium/chrome/browser/preferences/website/KeygenInfo;)V
    .locals 1

    .prologue
    .line 140
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mKeygenInfo:Lorg/chromium/chrome/browser/preferences/website/KeygenInfo;

    .line 141
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/KeygenInfo;->getEmbedder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->create(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mSummary:Ljava/lang/String;

    .line 145
    :cond_0
    return-void
.end method

.method public setKeygenPermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mKeygenInfo:Lorg/chromium/chrome/browser/preferences/website/KeygenInfo;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mKeygenInfo:Lorg/chromium/chrome/browser/preferences/website/KeygenInfo;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/preferences/website/KeygenInfo;->setContentSetting(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    .line 165
    :cond_0
    return-void
.end method

.method public setLocalStorageInfo(Lorg/chromium/chrome/browser/preferences/website/LocalStorageInfo;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mLocalStorageInfo:Lorg/chromium/chrome/browser/preferences/website/LocalStorageInfo;

    .line 369
    return-void
.end method

.method public setMicrophoneInfo(Lorg/chromium/chrome/browser/preferences/website/MicrophoneInfo;)V
    .locals 1

    .prologue
    .line 328
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mMicrophoneInfo:Lorg/chromium/chrome/browser/preferences/website/MicrophoneInfo;

    .line 329
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/MicrophoneInfo;->getEmbedder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->create(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mSummary:Ljava/lang/String;

    .line 333
    :cond_0
    return-void
.end method

.method public setMicrophonePermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mMicrophoneInfo:Lorg/chromium/chrome/browser/preferences/website/MicrophoneInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mMicrophoneInfo:Lorg/chromium/chrome/browser/preferences/website/MicrophoneInfo;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/preferences/website/MicrophoneInfo;->setContentSetting(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    .line 358
    :cond_0
    return-void
.end method

.method public setMidiInfo(Lorg/chromium/chrome/browser/preferences/website/MidiInfo;)V
    .locals 1

    .prologue
    .line 171
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mMidiInfo:Lorg/chromium/chrome/browser/preferences/website/MidiInfo;

    .line 172
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/MidiInfo;->getEmbedder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->create(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mSummary:Ljava/lang/String;

    .line 176
    :cond_0
    return-void
.end method

.method public setMidiPermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mMidiInfo:Lorg/chromium/chrome/browser/preferences/website/MidiInfo;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mMidiInfo:Lorg/chromium/chrome/browser/preferences/website/MidiInfo;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/preferences/website/MidiInfo;->setContentSetting(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    .line 196
    :cond_0
    return-void
.end method

.method public setNotificationInfo(Lorg/chromium/chrome/browser/preferences/website/NotificationInfo;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mNotificationInfo:Lorg/chromium/chrome/browser/preferences/website/NotificationInfo;

    .line 287
    return-void
.end method

.method public setNotificationPermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mNotificationInfo:Lorg/chromium/chrome/browser/preferences/website/NotificationInfo;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mNotificationInfo:Lorg/chromium/chrome/browser/preferences/website/NotificationInfo;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/preferences/website/NotificationInfo;->setContentSetting(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    .line 307
    :cond_0
    return-void
.end method

.method public setPopupException(Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mPopupException:Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;

    .line 227
    return-void
.end method

.method public setPopupPermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mPopupException:Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mPopupException:Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;->setContentSetting(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    .line 248
    :cond_0
    return-void
.end method

.method public setProtectedMediaIdentifierInfo(Lorg/chromium/chrome/browser/preferences/website/ProtectedMediaIdentifierInfo;)V
    .locals 1

    .prologue
    .line 254
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mProtectedMediaIdentifierInfo:Lorg/chromium/chrome/browser/preferences/website/ProtectedMediaIdentifierInfo;

    .line 255
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/ProtectedMediaIdentifierInfo;->getEmbedder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->create(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mSummary:Ljava/lang/String;

    .line 259
    :cond_0
    return-void
.end method

.method public setProtectedMediaIdentifierPermission(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mProtectedMediaIdentifierInfo:Lorg/chromium/chrome/browser/preferences/website/ProtectedMediaIdentifierInfo;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/Website;->mProtectedMediaIdentifierInfo:Lorg/chromium/chrome/browser/preferences/website/ProtectedMediaIdentifierInfo;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/preferences/website/ProtectedMediaIdentifierInfo;->setContentSetting(Lorg/chromium/chrome/browser/preferences/website/ContentSetting;)V

    .line 280
    :cond_0
    return-void
.end method
