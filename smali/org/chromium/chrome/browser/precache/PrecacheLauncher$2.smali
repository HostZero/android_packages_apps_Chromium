.class Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2;
.super Ljava/lang/Object;
.source "PrecacheLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/precache/PrecacheLauncher;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/precache/PrecacheLauncher;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2;->this$0:Lorg/chromium/chrome/browser/precache/PrecacheLauncher;

    iput-object p2, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2;->this$0:Lorg/chromium/chrome/browser/precache/PrecacheLauncher;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mCalled:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->access$002(Lorg/chromium/chrome/browser/precache/PrecacheLauncher;Z)Z

    .line 145
    invoke-static {}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->get()Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2;->this$0:Lorg/chromium/chrome/browser/precache/PrecacheLauncher;

    # getter for: Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mListener:Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;
    invoke-static {v1}, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->access$100(Lorg/chromium/chrome/browser/precache/PrecacheLauncher;)Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2;->this$0:Lorg/chromium/chrome/browser/precache/PrecacheLauncher;

    new-instance v2, Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2$1;

    invoke-direct {v2, p0, v0}, Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2$1;-><init>(Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2;Lorg/chromium/chrome/browser/sync/ProfileSyncService;)V

    # setter for: Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mListener:Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;
    invoke-static {v1, v2}, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->access$102(Lorg/chromium/chrome/browser/precache/PrecacheLauncher;Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;)Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;

    .line 156
    iget-object v1, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2;->this$0:Lorg/chromium/chrome/browser/precache/PrecacheLauncher;

    # getter for: Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mListener:Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;
    invoke-static {v1}, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->access$100(Lorg/chromium/chrome/browser/precache/PrecacheLauncher;)Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->addSyncStateChangedListener(Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2;->this$0:Lorg/chromium/chrome/browser/precache/PrecacheLauncher;

    # getter for: Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mListener:Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;
    invoke-static {v0}, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->access$100(Lorg/chromium/chrome/browser/precache/PrecacheLauncher;)Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheLauncher$2;->this$0:Lorg/chromium/chrome/browser/precache/PrecacheLauncher;

    # getter for: Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->mListener:Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;
    invoke-static {v0}, Lorg/chromium/chrome/browser/precache/PrecacheLauncher;->access$100(Lorg/chromium/chrome/browser/precache/PrecacheLauncher;)Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;->syncStateChanged()V

    .line 164
    :cond_1
    return-void
.end method
