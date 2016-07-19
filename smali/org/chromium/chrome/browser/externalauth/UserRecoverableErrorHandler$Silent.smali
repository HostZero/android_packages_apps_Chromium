.class public final Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler$Silent;
.super Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler;
.source "UserRecoverableErrorHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected final handle(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 87
    const-string/jumbo v0, "GooglePlayServices.ErrorHandlerAction"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 89
    return-void
.end method
