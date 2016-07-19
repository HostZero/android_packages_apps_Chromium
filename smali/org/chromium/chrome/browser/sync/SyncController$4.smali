.class Lorg/chromium/chrome/browser/sync/SyncController$4;
.super Ljava/lang/Object;
.source "SyncController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/sync/SyncController;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/sync/SyncController;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lorg/chromium/chrome/browser/sync/SyncController$4;->this$0:Lorg/chromium/chrome/browser/sync/SyncController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/SyncController$4;->this$0:Lorg/chromium/chrome/browser/sync/SyncController;

    # invokes: Lorg/chromium/chrome/browser/sync/SyncController;->updateSyncStateFromAndroid()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/sync/SyncController;->access$200(Lorg/chromium/chrome/browser/sync/SyncController;)V

    .line 199
    return-void
.end method
