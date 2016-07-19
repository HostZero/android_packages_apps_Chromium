.class public interface abstract Lorg/chromium/printing/PrintingController;
.super Ljava/lang/Object;
.source "PrintingController.java"


# virtual methods
.method public abstract getDpi()I
.end method

.method public abstract getFileDescriptor()I
.end method

.method public abstract getPageHeight()I
.end method

.method public abstract getPageNumbers()[I
.end method

.method public abstract getPageWidth()I
.end method

.method public abstract hasPrintingFinished()Z
.end method

.method public abstract isBusy()Z
.end method

.method public abstract pageCountEstimationDone(I)V
.end method

.method public abstract pdfWritingDone(Z)V
.end method

.method public abstract setPendingPrint(Lorg/chromium/printing/Printable;Lorg/chromium/printing/PrintManagerDelegate;)V
.end method

.method public abstract setPrintingContext(Lorg/chromium/printing/PrintingContextInterface;)V
.end method

.method public abstract startPendingPrint(Lorg/chromium/printing/PrintingContextInterface;)V
.end method

.method public abstract startPrint(Lorg/chromium/printing/Printable;Lorg/chromium/printing/PrintManagerDelegate;)V
.end method
