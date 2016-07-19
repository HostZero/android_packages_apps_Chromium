.class final Lorg/chromium/chrome/browser/services/gcm/GcmUma$2;
.super Ljava/lang/Object;
.source "GcmUma.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lorg/chromium/chrome/browser/services/gcm/GcmUma$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lorg/chromium/chrome/browser/services/gcm/GcmUma$2;->val$task:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/chrome/browser/services/gcm/GcmUma$2;->val$context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/content/browser/BrowserStartupController;->get(Landroid/content/Context;I)Lorg/chromium/content/browser/BrowserStartupController;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/services/gcm/GcmUma$2$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/services/gcm/GcmUma$2$1;-><init>(Lorg/chromium/chrome/browser/services/gcm/GcmUma$2;)V

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/BrowserStartupController;->addStartupCompletedObserver(Lorg/chromium/content/browser/BrowserStartupController$StartupCallback;)V

    .line 52
    return-void
.end method
