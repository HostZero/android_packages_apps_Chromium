.class public Lorg/chromium/printing/PrintManagerDelegateImpl;
.super Ljava/lang/Object;
.source "PrintManagerDelegateImpl.java"

# interfaces
.implements Lorg/chromium/printing/PrintManagerDelegate;


# instance fields
.field private final mPrintManager:Landroid/print/PrintManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string/jumbo v0, "print"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    iput-object v0, p0, Lorg/chromium/printing/PrintManagerDelegateImpl;->mPrintManager:Landroid/print/PrintManager;

    .line 33
    return-void
.end method


# virtual methods
.method public print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/printing/PrintManagerDelegateImpl;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 40
    return-void
.end method
