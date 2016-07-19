.class public Lorg/chromium/chrome/browser/sync/SyncNotificationController;
.super Ljava/lang/Object;
.source "SyncNotificationController.java"

# interfaces
.implements Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAccountManagementFragment:Ljava/lang/Class;

.field private final mApplicationContext:Landroid/content/Context;

.field private final mNotificationController:Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;

.field private final mPassphraseRequestActivity:Ljava/lang/Class;

.field private final mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/chromium/chrome/browser/sync/SyncNotificationController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->mApplicationContext:Landroid/content/Context;

    .line 38
    invoke-static {p1}, Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->mNotificationController:Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;

    .line 39
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    .line 40
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_0
    iput-object p2, p0, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->mPassphraseRequestActivity:Ljava/lang/Class;

    .line 42
    iput-object p3, p0, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->mAccountManagementFragment:Ljava/lang/Class;

    .line 43
    return-void
.end method

.method private createPasswordIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->setPassphrasePrompted(Z)V

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->mApplicationContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->mPassphraseRequestActivity:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 143
    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 147
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    return-object v0
.end method

.method private createSettingsIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->mAccountManagementFragment:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/preferences/PreferencesLauncher;->createIntentForSettingsPage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private shouldSyncAuthErrorBeShown()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 101
    sget-object v1, Lorg/chromium/chrome/browser/sync/SyncNotificationController$1;->$SwitchMap$org$chromium$chrome$browser$sync$GoogleServiceAuthError$State:[I

    iget-object v2, p0, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->getAuthError()Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 116
    const-string/jumbo v1, "SyncNotificationController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Not showing unknown Auth Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->getAuthError()Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    :pswitch_0
    return v0

    .line 114
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public syncStateChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 58
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 64
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/sync/AndroidSyncSettings;->isSyncEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->mNotificationController:Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;

    invoke-virtual {v0, v5}, Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;->cancelNotification(I)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->shouldSyncAuthErrorBeShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->getAuthError()Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/GoogleServiceAuthError$State;->getMessage()I

    move-result v1

    .line 70
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->createSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    .line 94
    :goto_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->mNotificationController:Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;

    iget-object v3, p0, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->mApplicationContext:Landroid/content/Context;

    sget v4, Lorg/chromium/chrome/R$string;->sign_in_sync:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;->formatMessageParts(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v1, v0}, Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;->updateSingleNotification(ILjava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isPassphraseRequiredForDecryption()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isPassphrasePrompted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    sget-object v0, Lorg/chromium/chrome/browser/sync/SyncNotificationController$1;->$SwitchMap$org$chromium$sync$PassphraseType:[I

    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->getPassphraseType()Lorg/chromium/sync/PassphraseType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/sync/PassphraseType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->mNotificationController:Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;

    invoke-virtual {v0, v5}, Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;->cancelNotification(I)V

    goto :goto_0

    .line 80
    :pswitch_0
    sget v1, Lorg/chromium/chrome/R$string;->sync_need_passphrase:I

    .line 81
    invoke-direct {p0}, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->createPasswordIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 90
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncNotificationController;->mNotificationController:Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;

    invoke-virtual {v0, v5}, Lorg/chromium/chrome/browser/notifications/GoogleServicesNotificationController;->cancelNotification(I)V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
