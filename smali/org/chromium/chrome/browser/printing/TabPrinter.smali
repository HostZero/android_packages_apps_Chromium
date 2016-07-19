.class public Lorg/chromium/chrome/browser/printing/TabPrinter;
.super Ljava/lang/Object;
.source "TabPrinter.java"

# interfaces
.implements Lorg/chromium/printing/Printable;


# static fields
.field private static sDefaultTitle:Ljava/lang/String;


# instance fields
.field private final mTab:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/printing/TabPrinter;->mTab:Ljava/lang/ref/WeakReference;

    .line 29
    return-void
.end method

.method public static setDefaultTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    sput-object p0, Lorg/chromium/chrome/browser/printing/TabPrinter;->sDefaultTitle:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/printing/TabPrinter;->mTab:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/Tab;

    .line 48
    if-nez v0, :cond_1

    sget-object v0, Lorg/chromium/chrome/browser/printing/TabPrinter;->sDefaultTitle:Ljava/lang/String;

    .line 56
    :cond_0
    :goto_0
    return-object v0

    .line 50
    :cond_1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    sget-object v0, Lorg/chromium/chrome/browser/printing/TabPrinter;->sDefaultTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public print()Z
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lorg/chromium/chrome/browser/printing/TabPrinter;->mTab:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/Tab;

    .line 38
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->print()Z

    move-result v0

    goto :goto_0
.end method
