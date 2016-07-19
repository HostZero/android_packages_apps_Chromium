.class final Lorg/chromium/chrome/browser/BackgroundSyncLauncher$3;
.super Ljava/lang/Object;
.source "BackgroundSyncLauncher.java"

# interfaces
.implements Lorg/chromium/chrome/browser/BackgroundSyncLauncher$ShouldLaunchCallback;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$scheduler:Lcom/google/android/gms/gcm/GcmNetworkManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/gcm/GcmNetworkManager;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$3;->val$scheduler:Lcom/google/android/gms/gcm/GcmNetworkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    .line 245
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/chrome/browser/BackgroundSyncLauncher$3;->val$scheduler:Lcom/google/android/gms/gcm/GcmNetworkManager;

    const-wide/16 v2, 0x0

    # invokes: Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->scheduleLaunchTask(Landroid/content/Context;Lcom/google/android/gms/gcm/GcmNetworkManager;J)Z
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/BackgroundSyncLauncher;->access$200(Landroid/content/Context;Lcom/google/android/gms/gcm/GcmNetworkManager;J)Z

    .line 252
    :cond_0
    return-void
.end method
