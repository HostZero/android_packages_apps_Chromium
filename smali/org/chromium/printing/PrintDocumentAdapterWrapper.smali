.class public Lorg/chromium/printing/PrintDocumentAdapterWrapper;
.super Landroid/print/PrintDocumentAdapter;
.source "PrintDocumentAdapterWrapper.java"


# instance fields
.field private mPdfGenerator:Lorg/chromium/printing/PrintDocumentAdapterWrapper$PdfGenerator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    .line 81
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/print/PrintDocumentAdapter;->onFinish()V

    .line 144
    iget-object v0, p0, Lorg/chromium/printing/PrintDocumentAdapterWrapper;->mPdfGenerator:Lorg/chromium/printing/PrintDocumentAdapterWrapper$PdfGenerator;

    invoke-interface {v0}, Lorg/chromium/printing/PrintDocumentAdapterWrapper$PdfGenerator;->onFinish()V

    .line 145
    return-void
.end method

.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 127
    iget-object v0, p0, Lorg/chromium/printing/PrintDocumentAdapterWrapper;->mPdfGenerator:Lorg/chromium/printing/PrintDocumentAdapterWrapper$PdfGenerator;

    new-instance v4, Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapperImpl;

    invoke-direct {v4, p4}, Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapperImpl;-><init>(Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/chromium/printing/PrintDocumentAdapterWrapper$PdfGenerator;->onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Lorg/chromium/printing/PrintDocumentAdapterWrapper$LayoutResultCallbackWrapper;Landroid/os/Bundle;)V

    .line 129
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/chromium/printing/PrintDocumentAdapterWrapper;->mPdfGenerator:Lorg/chromium/printing/PrintDocumentAdapterWrapper$PdfGenerator;

    invoke-interface {v0}, Lorg/chromium/printing/PrintDocumentAdapterWrapper$PdfGenerator;->onStart()V

    .line 118
    return-void
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lorg/chromium/printing/PrintDocumentAdapterWrapper;->mPdfGenerator:Lorg/chromium/printing/PrintDocumentAdapterWrapper$PdfGenerator;

    new-instance v1, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapperImpl;

    invoke-direct {v1, p4}, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapperImpl;-><init>(Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lorg/chromium/printing/PrintDocumentAdapterWrapper$PdfGenerator;->onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;)V

    .line 139
    return-void
.end method

.method public print(Lorg/chromium/printing/PrintManagerDelegate;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-interface {p1, p2, p0, v0}, Lorg/chromium/printing/PrintManagerDelegate;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)V

    .line 113
    return-void
.end method

.method public setPdfGenerator(Lorg/chromium/printing/PrintDocumentAdapterWrapper$PdfGenerator;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lorg/chromium/printing/PrintDocumentAdapterWrapper;->mPdfGenerator:Lorg/chromium/printing/PrintDocumentAdapterWrapper$PdfGenerator;

    .line 106
    return-void
.end method
