.class Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$1$1;
.super Ljava/lang/Object;
.source "SyncCustomizationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$1;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$1;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$1$1;->this$1:Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$1$1;->this$1:Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$1;

    iget-object v0, v0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$1;->this$0:Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;

    # invokes: Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->updateSyncStateFromSwitch()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->access$300(Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;)V

    .line 177
    return-void
.end method
