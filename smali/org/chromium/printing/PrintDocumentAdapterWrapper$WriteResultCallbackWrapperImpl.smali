.class public Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapperImpl;
.super Ljava/lang/Object;
.source "PrintDocumentAdapterWrapper.java"

# interfaces
.implements Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapper;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lorg/chromium/printing/PrintDocumentAdapterWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapperImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapperImpl;->mCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .line 84
    sget-boolean v0, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapperImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 85
    :cond_0
    iput-object p1, p0, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapperImpl;->mCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .line 86
    return-void
.end method


# virtual methods
.method public onWriteFailed(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapperImpl;->mCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-virtual {v0, p1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method

.method public onWriteFinished([Landroid/print/PageRange;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/chromium/printing/PrintDocumentAdapterWrapper$WriteResultCallbackWrapperImpl;->mCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-virtual {v0, p1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V

    .line 91
    return-void
.end method
