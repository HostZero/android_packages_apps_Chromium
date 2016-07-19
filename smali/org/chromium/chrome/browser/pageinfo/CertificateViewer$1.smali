.class Lorg/chromium/chrome/browser/pageinfo/CertificateViewer$1;
.super Landroid/widget/ArrayAdapter;
.source "CertificateViewer.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer$1;->this$0:Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer$1;->this$0:Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;

    # getter for: Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mPadding:I
    invoke-static {v1}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->access$000(Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer$1;->this$0:Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;

    # getter for: Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mPadding:I
    invoke-static {v2}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->access$000(Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;)I

    move-result v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer$1;->this$0:Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;

    # getter for: Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mPadding:I
    invoke-static {v3}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->access$000(Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;)I

    move-result v3

    shl-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer$1;->this$0:Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;

    # getter for: Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mPadding:I
    invoke-static {v4}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->access$000(Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/chromium/base/ApiCompatibilityUtils;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 80
    return-object v0
.end method
