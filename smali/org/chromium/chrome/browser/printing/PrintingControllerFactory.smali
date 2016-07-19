.class public Lorg/chromium/chrome/browser/printing/PrintingControllerFactory;
.super Ljava/lang/Object;
.source "PrintingControllerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lorg/chromium/printing/PrintingController;
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Lorg/chromium/base/ApiCompatibilityUtils;->isPrintingSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->menu_print:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lorg/chromium/chrome/browser/printing/TabPrinter;->setDefaultTitle(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->error_printing_failed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v1, Lorg/chromium/printing/PrintDocumentAdapterWrapper;

    invoke-direct {v1}, Lorg/chromium/printing/PrintDocumentAdapterWrapper;-><init>()V

    invoke-static {v1, v0}, Lorg/chromium/printing/PrintingControllerImpl;->create(Lorg/chromium/printing/PrintDocumentAdapterWrapper;Ljava/lang/String;)Lorg/chromium/printing/PrintingController;

    move-result-object v0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
