.class Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$2;
.super Ljava/lang/Object;
.source "SyncCustomizationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$2;->this$0:Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment$2;->this$0:Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;

    # invokes: Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->updateDataTypeState()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;->access$400(Lorg/chromium/chrome/browser/sync/ui/SyncCustomizationFragment;)V

    .line 198
    return-void
.end method
