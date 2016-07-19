.class public Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;
.super Lcom/google/ipc/invalidation/ticl/android2/channel/f;
.source "InvalidationGcmUpstreamSender.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/ipc/invalidation/ticl/android2/channel/f;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;->sendUpstreamMessage(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private createDeepCopy(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 108
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 109
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 110
    invoke-virtual {v0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 112
    return-object v1
.end method

.method private isMessageWithinLimit(Landroid/os/Bundle;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    add-int/2addr v0, v1

    move v1, v0

    .line 96
    goto :goto_0

    .line 97
    :cond_0
    const/16 v0, 0xfa0

    if-le v1, v0, :cond_1

    .line 100
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private sendUpstreamMessage(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 78
    const-string/jumbo v0, "Authorization"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Bearer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;->isMessageWithinLimit(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x1

    invoke-static {p4, v0}, Lorg/chromium/chrome/browser/services/gcm/GcmUma;->recordGcmUpstreamHistogram(Landroid/content/Context;I)V

    .line 90
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v1

    const-wide/16 v4, 0x1

    move-object v2, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->send(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    :goto_1
    const-string/jumbo v0, "InvalidationGcmUpstream"

    const-string/jumbo v1, "Send message failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v0, 0x3

    invoke-static {p4, v0}, Lorg/chromium/chrome/browser/services/gcm/GcmUma;->recordGcmUpstreamHistogram(Landroid/content/Context;I)V

    goto :goto_0

    .line 87
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public deliverMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 39
    invoke-static {p0}, Lorg/chromium/sync/signin/ChromeSigninController;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/ChromeSigninController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/signin/ChromeSigninController;->getSignedInUser()Landroid/accounts/Account;

    move-result-object v0

    .line 40
    if-nez v0, :cond_0

    .line 43
    const-string/jumbo v0, "InvalidationGcmUpstream"

    const-string/jumbo v1, "No signed-in user; cannot send message to data center"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;->createDeepCopy(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 48
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 51
    const-string/jumbo v3, "https://www.googleapis.com/auth/chromesync"

    new-instance v4, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1;

    invoke-direct {v4, p0, p1, v1, v2}, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1;-><init>(Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V

    invoke-static {p0, v0, v3, v4}, Lorg/chromium/chrome/browser/signin/OAuth2TokenService;->getOAuth2AccessToken(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;)V

    goto :goto_0
.end method
