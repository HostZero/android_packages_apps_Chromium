.class Lorg/chromium/chrome/browser/sync/SyncController$1;
.super Ljava/lang/Object;
.source "SyncController.java"

# interfaces
.implements Lorg/chromium/chrome/browser/sync/ProfileSyncService$MasterSyncEnabledProvider;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/sync/SyncController;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/sync/SyncController;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lorg/chromium/chrome/browser/sync/SyncController$1;->this$0:Lorg/chromium/chrome/browser/sync/SyncController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMasterSyncEnabled()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncController$1;->this$0:Lorg/chromium/chrome/browser/sync/SyncController;

    # getter for: Lorg/chromium/chrome/browser/sync/SyncController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/chrome/browser/sync/SyncController;->access$000(Lorg/chromium/chrome/browser/sync/SyncController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/sync/AndroidSyncSettings;->isMasterSyncEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
