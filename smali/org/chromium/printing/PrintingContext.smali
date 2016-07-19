.class public Lorg/chromium/printing/PrintingContext;
.super Ljava/lang/Object;
.source "PrintingContext.java"

# interfaces
.implements Lorg/chromium/printing/PrintingContextInterface;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field private static final PRINTING_CONTEXT_MAP:Landroid/util/SparseArray;


# instance fields
.field private final mController:Lorg/chromium/printing/PrintingController;

.field private final mNativeObject:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/chromium/printing/PrintingContext;->PRINTING_CONTEXT_MAP:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lorg/chromium/printing/PrintingControllerImpl;->getInstance()Lorg/chromium/printing/PrintingController;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/printing/PrintingContext;->mController:Lorg/chromium/printing/PrintingController;

    .line 41
    iput-wide p1, p0, Lorg/chromium/printing/PrintingContext;->mNativeObject:J

    .line 42
    return-void
.end method

.method public static create(J)Lorg/chromium/printing/PrintingContext;
    .locals 2

    .prologue
    .line 72
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 73
    new-instance v0, Lorg/chromium/printing/PrintingContext;

    invoke-direct {v0, p0, p1}, Lorg/chromium/printing/PrintingContext;-><init>(J)V

    return-object v0
.end method

.method private native nativeAskUserForSettingsReply(JZ)V
.end method

.method private native nativeShowSystemDialogDone(J)V
.end method

.method public static pdfWritingDone(IZ)V
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 116
    sget-object v0, Lorg/chromium/printing/PrintingContext;->PRINTING_CONTEXT_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 118
    sget-object v0, Lorg/chromium/printing/PrintingContext;->PRINTING_CONTEXT_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/printing/PrintingContext;

    .line 119
    iget-object v0, v0, Lorg/chromium/printing/PrintingContext;->mController:Lorg/chromium/printing/PrintingController;

    invoke-interface {v0, p1}, Lorg/chromium/printing/PrintingController;->pdfWritingDone(Z)V

    .line 120
    sget-object v0, Lorg/chromium/printing/PrintingContext;->PRINTING_CONTEXT_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public askUserForSettingsReply(Z)V
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lorg/chromium/printing/PrintingContext;->mNativeObject:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/printing/PrintingContext;->nativeAskUserForSettingsReply(JZ)V

    .line 68
    return-void
.end method

.method public getDpi()I
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 85
    iget-object v0, p0, Lorg/chromium/printing/PrintingContext;->mController:Lorg/chromium/printing/PrintingController;

    invoke-interface {v0}, Lorg/chromium/printing/PrintingController;->getDpi()I

    move-result v0

    return v0
.end method

.method public getFileDescriptor()I
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 79
    iget-object v0, p0, Lorg/chromium/printing/PrintingContext;->mController:Lorg/chromium/printing/PrintingController;

    invoke-interface {v0}, Lorg/chromium/printing/PrintingController;->getFileDescriptor()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 97
    iget-object v0, p0, Lorg/chromium/printing/PrintingContext;->mController:Lorg/chromium/printing/PrintingController;

    invoke-interface {v0}, Lorg/chromium/printing/PrintingController;->getPageHeight()I

    move-result v0

    return v0
.end method

.method public getPages()[I
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 129
    iget-object v0, p0, Lorg/chromium/printing/PrintingContext;->mController:Lorg/chromium/printing/PrintingController;

    invoke-interface {v0}, Lorg/chromium/printing/PrintingController;->getPageNumbers()[I

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 91
    iget-object v0, p0, Lorg/chromium/printing/PrintingContext;->mController:Lorg/chromium/printing/PrintingController;

    invoke-interface {v0}, Lorg/chromium/printing/PrintingController;->getPageWidth()I

    move-result v0

    return v0
.end method

.method public pageCountEstimationDone(I)V
    .locals 3

    .prologue
    .line 134
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 136
    iget-object v0, p0, Lorg/chromium/printing/PrintingContext;->mController:Lorg/chromium/printing/PrintingController;

    invoke-interface {v0}, Lorg/chromium/printing/PrintingController;->hasPrintingFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-wide v0, p0, Lorg/chromium/printing/PrintingContext;->mNativeObject:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/printing/PrintingContext;->nativeAskUserForSettingsReply(JZ)V

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/chromium/printing/PrintingContext;->mController:Lorg/chromium/printing/PrintingController;

    invoke-interface {v0, p0}, Lorg/chromium/printing/PrintingController;->setPrintingContext(Lorg/chromium/printing/PrintingContextInterface;)V

    .line 143
    iget-object v0, p0, Lorg/chromium/printing/PrintingContext;->mController:Lorg/chromium/printing/PrintingController;

    invoke-interface {v0, p1}, Lorg/chromium/printing/PrintingController;->pageCountEstimationDone(I)V

    goto :goto_0
.end method

.method public showPrintDialog()V
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 103
    iget-object v0, p0, Lorg/chromium/printing/PrintingContext;->mController:Lorg/chromium/printing/PrintingController;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lorg/chromium/printing/PrintingContext;->mController:Lorg/chromium/printing/PrintingController;

    invoke-interface {v0, p0}, Lorg/chromium/printing/PrintingController;->startPendingPrint(Lorg/chromium/printing/PrintingContextInterface;)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/printing/PrintingContext;->showSystemDialogDone()V

    goto :goto_0
.end method

.method public showSystemDialogDone()V
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lorg/chromium/printing/PrintingContext;->mNativeObject:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/printing/PrintingContext;->nativeShowSystemDialogDone(J)V

    .line 150
    return-void
.end method

.method public updatePrintingContextMap(IZ)V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 53
    if-eqz p2, :cond_0

    .line 54
    sget-object v0, Lorg/chromium/printing/PrintingContext;->PRINTING_CONTEXT_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    sget-object v0, Lorg/chromium/printing/PrintingContext;->PRINTING_CONTEXT_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method
