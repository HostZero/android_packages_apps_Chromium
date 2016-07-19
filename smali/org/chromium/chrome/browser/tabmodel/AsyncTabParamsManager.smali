.class public Lorg/chromium/chrome/browser/tabmodel/AsyncTabParamsManager;
.super Ljava/lang/Object;
.source "AsyncTabParamsManager.java"


# static fields
.field private static final sAsyncTabParams:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParamsManager;->sAsyncTabParams:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static add(ILorg/chromium/chrome/browser/tabmodel/AsyncTabParams;)V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParamsManager;->sAsyncTabParams:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    return-void
.end method

.method public static hasParamsForTabId(I)Z
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParamsManager;->sAsyncTabParams:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasParamsWithTabToReparent()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    move v1, v2

    .line 39
    :goto_0
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParamsManager;->sAsyncTabParams:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 40
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParamsManager;->sAsyncTabParams:Landroid/util/SparseArray;

    sget-object v3, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParamsManager;->sAsyncTabParams:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;->getTabToReparent()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    const/4 v2, 0x1

    .line 43
    :cond_0
    return v2

    .line 39
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static remove(I)Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParamsManager;->sAsyncTabParams:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;

    .line 51
    sget-object v1, Lorg/chromium/chrome/browser/tabmodel/AsyncTabParamsManager;->sAsyncTabParams:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 52
    return-object v0
.end method
