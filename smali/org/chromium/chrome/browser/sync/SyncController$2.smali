.class Lorg/chromium/chrome/browser/sync/SyncController$2;
.super Ljava/lang/Object;
.source "SyncController.java"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ActivityStateListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/sync/SyncController;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/sync/SyncController;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lorg/chromium/chrome/browser/sync/SyncController$2;->this$0:Lorg/chromium/chrome/browser/sync/SyncController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncController$2;->this$0:Lorg/chromium/chrome/browser/sync/SyncController;

    # getter for: Lorg/chromium/chrome/browser/sync/SyncController;->mProfileSyncService:Lorg/chromium/chrome/browser/sync/ProfileSyncService;
    invoke-static {v0}, Lorg/chromium/chrome/browser/sync/SyncController;->access$100(Lorg/chromium/chrome/browser/sync/SyncController;)Lorg/chromium/chrome/browser/sync/ProfileSyncService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/sync/ProfileSyncService;->flushDirectory()V

    .line 100
    :cond_0
    return-void
.end method
