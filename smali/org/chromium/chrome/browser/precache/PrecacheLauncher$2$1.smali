.class Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2$1;
.super Ljava/lang/Object;
.source "PrecacheLauncher.java"

# interfaces
.implements Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2;

.field final synthetic val$sync:Lorg/chromium/chrome/browser/sync/ProfileSyncService;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2;Lorg/chromium/chrome/browser/sync/ProfileSyncService;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2$1;->this$1:Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2;

    iput-object p2, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2$1;->val$sync:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public syncStateChanged()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2$1;->val$sync:Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->isBackendInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2$1;->this$1:Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2;

    iget-object v0, v0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2;->this$0:Lorg/chromium/chrome/browser/precache/PrecacheLauncher;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mSyncInitialized:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->access$202(Lorg/chromium/chrome/browser/precache/PrecacheLauncher;Z)Z

    .line 152
    iget-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2$1;->this$1:Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2;

    iget-object v0, v0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2;->this$0:Lorg/chromium/chrome/browser/precache/PrecacheLauncher;

    iget-object v1, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2$1;->this$1:Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2;

    iget-object v1, v1, Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2;->val$context:Landroid/content/Context;

    # invokes: Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->updateEnabledSync(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->access$300(Lorg/chromium/chrome/browser/precache/PrecacheLauncher;Landroid/content/Context;)V

    .line 154
    :cond_0
    return-void
.end method
