.class Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1;
.super Ljava/lang/Object;
.source "InvalidationGcmUpstreamSender.java"

# interfaces
.implements Lorg/chromium/sync/signin/AccountManagerHelper$GetAuthTokenCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;

.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$dataToSend:Landroid/os/Bundle;

.field final synthetic val$to:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1;->this$0:Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;

    iput-object p2, p0, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1;->val$to:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1;->val$dataToSend:Landroid/os/Bundle;

    iput-object p4, p0, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1;->val$applicationContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tokenAvailable(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1$1;-><init>(Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1;Ljava/lang/String;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 63
    return-void
.end method

.method public tokenUnavailable(Z)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender$1;->this$0:Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/services/gcm/InvalidationGcmUpstreamSender;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/services/gcm/GcmUma;->recordGcmUpstreamHistogram(Landroid/content/Context;I)V

    .line 69
    return-void
.end method
