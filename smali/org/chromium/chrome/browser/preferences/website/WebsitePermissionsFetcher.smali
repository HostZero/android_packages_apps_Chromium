.class public Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;
.super Ljava/lang/Object;
.source "WebsitePermissionsFetcher.java"


# instance fields
.field private final mCallback:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$WebsitePermissionsCallback;

.field private final mSitesByHost:Ljava/util/Map;

.field private final mSitesByOrigin:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$WebsitePermissionsCallback;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->mSitesByOrigin:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->mSitesByHost:Ljava/util/Map;

    .line 47
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->mCallback:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$WebsitePermissionsCallback;

    .line 48
    return-void
.end method

.method static synthetic access$1600(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;)Lorg/chromium/chrome/browser/preferences/website/Website;
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->createSiteByOriginAndHost(Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;)Lorg/chromium/chrome/browser/preferences/website/Website;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->findOrCreateSitesByHost(Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->findOrCreateSitesByOrigin(Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->mSitesByOrigin:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->mSitesByHost:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;)Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$WebsitePermissionsCallback;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->mCallback:Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$WebsitePermissionsCallback;

    return-object v0
.end method

.method private createSiteByOriginAndHost(Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;)Lorg/chromium/chrome/browser/preferences/website/Website;
    .locals 5

    .prologue
    .line 141
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->getOrigin()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 143
    new-instance v2, Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-direct {v2, p1}, Lorg/chromium/chrome/browser/preferences/website/Website;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;)V

    .line 144
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->mSitesByOrigin:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->mSitesByOrigin:Ljava/util/Map;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->mSitesByOrigin:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->mSitesByHost:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->mSitesByHost:Ljava/util/Map;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->mSitesByHost:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    return-object v2
.end method

.method private findOrCreateSitesByHost(Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;)Ljava/util/Set;
    .locals 3

    .prologue
    .line 158
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 159
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->mSitesByHost:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->mSitesByHost:Ljava/util/Map;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->mSitesByHost:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    new-instance v2, Lorg/chromium/chrome/browser/preferences/website/Website;

    invoke-direct {v2, p1}, Lorg/chromium/chrome/browser/preferences/website/Website;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->mSitesByHost:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method private findOrCreateSitesByOrigin(Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;)Ljava/util/Set;
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;->getOrigin()Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->mSitesByOrigin:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->createSiteByOriginAndHost(Lorg/chromium/chrome/browser/preferences/website/WebsiteAddress;)Lorg/chromium/chrome/browser/preferences/website/Website;

    .line 154
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->mSitesByOrigin:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public fetchAllPreferences()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;

    invoke-direct {v0, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    .line 59
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$GeolocationInfoFetcher;

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$GeolocationInfoFetcher;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$MidiInfoFetcher;

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$MidiInfoFetcher;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$CookieInfoFetcher;

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$CookieInfoFetcher;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$FullscreenInfoFetcher;

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$FullscreenInfoFetcher;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$KeygenInfoFetcher;

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$KeygenInfoFetcher;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$LocalStorageInfoFetcher;

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$LocalStorageInfoFetcher;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$WebStorageInfoFetcher;

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$WebStorageInfoFetcher;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$PopupExceptionInfoFetcher;

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$PopupExceptionInfoFetcher;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$JavaScriptExceptionInfoFetcher;

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$JavaScriptExceptionInfoFetcher;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$ProtectedMediaIdentifierInfoFetcher;

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$ProtectedMediaIdentifierInfoFetcher;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$NotificationInfoFetcher;

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$NotificationInfoFetcher;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$CameraCaptureInfoFetcher;

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$CameraCaptureInfoFetcher;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$MicrophoneCaptureInfoFetcher;

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$MicrophoneCaptureInfoFetcher;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$PermissionsAvailableCallbackRunner;

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$PermissionsAvailableCallbackRunner;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->next()V

    .line 87
    return-void
.end method

.method public fetchPreferencesForCategory(Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showAllSites()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;->fetchAllPreferences()V

    .line 138
    :goto_0
    return-void

    .line 100
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;

    invoke-direct {v0, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    .line 102
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showGeolocationSites()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$GeolocationInfoFetcher;

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$GeolocationInfoFetcher;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_1
    :goto_1
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$PermissionsAvailableCallbackRunner;

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$PermissionsAvailableCallbackRunner;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->next()V

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showCookiesSites()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$CookieInfoFetcher;

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$CookieInfoFetcher;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 108
    :cond_3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showStorageSites()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 110
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$LocalStorageInfoFetcher;

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$LocalStorageInfoFetcher;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$WebStorageInfoFetcher;

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$WebStorageInfoFetcher;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 113
    :cond_4
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showFullscreenSites()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 115
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$FullscreenInfoFetcher;

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$FullscreenInfoFetcher;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 116
    :cond_5
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showCameraSites()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 118
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$CameraCaptureInfoFetcher;

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$CameraCaptureInfoFetcher;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 119
    :cond_6
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showMicrophoneSites()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 121
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$MicrophoneCaptureInfoFetcher;

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$MicrophoneCaptureInfoFetcher;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 122
    :cond_7
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showPopupSites()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 125
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$PopupExceptionInfoFetcher;

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$PopupExceptionInfoFetcher;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 126
    :cond_8
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showJavaScriptSites()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 128
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$JavaScriptExceptionInfoFetcher;

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$JavaScriptExceptionInfoFetcher;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 129
    :cond_9
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showNotificationsSites()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 131
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$NotificationInfoFetcher;

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$NotificationInfoFetcher;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 132
    :cond_a
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/SiteSettingsCategory;->showProtectedMediaSites()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    new-instance v1, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$ProtectedMediaIdentifierInfoFetcher;

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$ProtectedMediaIdentifierInfoFetcher;-><init>(Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher;Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/website/WebsitePermissionsFetcher$TaskQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method
