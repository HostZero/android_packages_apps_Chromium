.class public final Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler$SystemNotification;
.super Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler;
.source "UserRecoverableErrorHandler.java"


# static fields
.field private static final sNotificationShown:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler$SystemNotification;->sNotificationShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected final handle(Landroid/content/Context;I)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 109
    sget-object v0, Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler$SystemNotification;->sNotificationShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    const-string/jumbo v0, "GooglePlayServices.ErrorHandlerAction"

    const/4 v1, 0x3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 119
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->getInstance()Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->showErrorNotification(ILandroid/content/Context;)V

    .line 116
    const-string/jumbo v0, "GooglePlayServices.ErrorHandlerAction"

    invoke-static {v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    goto :goto_0
.end method
