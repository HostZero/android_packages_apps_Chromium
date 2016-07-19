.class Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertSelectionFailureDialog;
.super Ljava/lang/Object;
.source "SSLClientCertificateRequest.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertSelectionFailureDialog;->mActivity:Landroid/app/Activity;

    .line 216
    return-void
.end method


# virtual methods
.method public show()V
    .locals 4

    .prologue
    .line 222
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertSelectionFailureDialog;->mActivity:Landroid/app/Activity;

    sget v2, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 224
    sget v1, Lorg/chromium/chrome/R$string;->client_cert_unsupported_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->client_cert_unsupported_message:I

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$string;->close:I

    new-instance v3, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertSelectionFailureDialog$1;

    invoke-direct {v3, p0}, Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertSelectionFailureDialog$1;-><init>(Lorg/chromium/chrome/browser/SSLClientCertificateRequest$CertSelectionFailureDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 233
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 234
    return-void
.end method
