.class public Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler$ModalDialog;
.super Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler;
.source "UserRecoverableErrorHandler.java"


# static fields
.field public static final NO_RESPONSE_REQUIRED:I = -0x1


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler;-><init>()V

    .line 157
    iput-object p1, p0, Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler$ModalDialog;->mActivity:Landroid/app/Activity;

    .line 158
    return-void
.end method


# virtual methods
.method protected final getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler$ModalDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected getOnCancelListener()Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getRequestCode()I
    .locals 1

    .prologue
    .line 202
    const/4 v0, -0x1

    return v0
.end method

.method protected final handle(Landroid/content/Context;I)V
    .locals 4

    .prologue
    .line 228
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler$ModalDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler$ModalDialog;->prepareToHandle(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 229
    invoke-static {}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->getInstance()Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler$ModalDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler$ModalDialog;->getRequestCode()I

    move-result v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/externalauth/UserRecoverableErrorHandler$ModalDialog;->getOnCancelListener()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v3

    invoke-virtual {v0, p2, v1, v2, v3}, Lorg/chromium/chrome/browser/externalauth/ExternalAuthUtils;->showErrorDialog(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)V

    .line 231
    const-string/jumbo v0, "GooglePlayServices.ErrorHandlerAction"

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 233
    return-void
.end method

.method protected prepareToHandle(Landroid/app/Activity;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 183
    return-void
.end method
