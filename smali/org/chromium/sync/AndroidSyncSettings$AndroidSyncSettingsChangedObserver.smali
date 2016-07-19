.class Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsChangedObserver;
.super Ljava/lang/Object;
.source "AndroidSyncSettings.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# instance fields
.field final synthetic this$0:Lorg/chromium/sync/AndroidSyncSettings;


# direct methods
.method private constructor <init>(Lorg/chromium/sync/AndroidSyncSettings;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsChangedObserver;->this$0:Lorg/chromium/sync/AndroidSyncSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/sync/AndroidSyncSettings;Lorg/chromium/sync/AndroidSyncSettings$1;)V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsChangedObserver;-><init>(Lorg/chromium/sync/AndroidSyncSettings;)V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 259
    iget-object v0, p0, Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsChangedObserver;->this$0:Lorg/chromium/sync/AndroidSyncSettings;

    # invokes: Lorg/chromium/sync/AndroidSyncSettings;->updateCachedSettings()Z
    invoke-static {v0}, Lorg/chromium/sync/AndroidSyncSettings;->access$400(Lorg/chromium/sync/AndroidSyncSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lorg/chromium/sync/AndroidSyncSettings$AndroidSyncSettingsChangedObserver;->this$0:Lorg/chromium/sync/AndroidSyncSettings;

    # invokes: Lorg/chromium/sync/AndroidSyncSettings;->notifyObservers()V
    invoke-static {v0}, Lorg/chromium/sync/AndroidSyncSettings;->access$500(Lorg/chromium/sync/AndroidSyncSettings;)V

    .line 264
    :cond_0
    return-void
.end method
