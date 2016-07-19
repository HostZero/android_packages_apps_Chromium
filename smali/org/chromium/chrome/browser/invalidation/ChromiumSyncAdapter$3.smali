.class Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$3;
.super Ljava/lang/Object;
.source "ChromiumSyncAdapter.java"

# interfaces
.implements Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$invalidation:Lorg/chromium/components/invalidation/PendingInvalidation;

.field final synthetic val$semaphore:Ljava/util/concurrent/Semaphore;

.field final synthetic val$syncResult:Landroid/content/SyncResult;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;Lorg/chromium/components/invalidation/PendingInvalidation;Ljava/util/concurrent/Semaphore;Landroid/content/Context;Ljava/lang/String;Landroid/content/SyncResult;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$3;->this$0:Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;

    iput-object p2, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$3;->val$invalidation:Lorg/chromium/components/invalidation/PendingInvalidation;

    iput-object p3, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$3;->val$semaphore:Ljava/util/concurrent/Semaphore;

    iput-object p4, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$3;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$3;->val$account:Ljava/lang/String;

    iput-object p6, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$3;->val$syncResult:Landroid/content/SyncResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 6

    .prologue
    .line 159
    invoke-static {}, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;->getInstance()Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$3;->val$account:Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$3;->val$invalidation:Lorg/chromium/components/invalidation/PendingInvalidation;

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;->addPendingInvalidation(Landroid/content/Context;Ljava/lang/String;Lorg/chromium/components/invalidation/PendingInvalidation;)V

    .line 162
    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$3;->val$syncResult:Landroid/content/SyncResult;

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numIoExceptions:J

    .line 163
    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$3;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 164
    return-void
.end method

.method public onSuccess(Z)V
    .locals 7

    .prologue
    .line 151
    iget-object v1, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$3;->this$0:Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;

    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$3;->val$invalidation:Lorg/chromium/components/invalidation/PendingInvalidation;

    iget v2, v0, Lorg/chromium/components/invalidation/PendingInvalidation;->mObjectSource:I

    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$3;->val$invalidation:Lorg/chromium/components/invalidation/PendingInvalidation;

    iget-object v3, v0, Lorg/chromium/components/invalidation/PendingInvalidation;->mObjectId:Ljava/lang/String;

    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$3;->val$invalidation:Lorg/chromium/components/invalidation/PendingInvalidation;

    iget-wide v4, v0, Lorg/chromium/components/invalidation/PendingInvalidation;->mVersion:J

    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$3;->val$invalidation:Lorg/chromium/components/invalidation/PendingInvalidation;

    iget-object v6, v0, Lorg/chromium/components/invalidation/PendingInvalidation;->mPayload:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter;->notifyInvalidation(ILjava/lang/String;JLjava/lang/String;)V

    .line 153
    iget-object v0, p0, Lorg/chromium/chrome/browser/invalidation/ChromiumSyncAdapter$3;->val$semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 154
    return-void
.end method
