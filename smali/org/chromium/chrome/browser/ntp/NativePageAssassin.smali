.class public Lorg/chromium/chrome/browser/ntp/NativePageAssassin;
.super Ljava/lang/Object;
.source "NativePageAssassin.java"


# static fields
.field private static final sInstance:Lorg/chromium/chrome/browser/ntp/NativePageAssassin;


# instance fields
.field private mRecentTabs:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lorg/chromium/chrome/browser/ntp/NativePageAssassin;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/ntp/NativePageAssassin;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/ntp/NativePageAssassin;->sInstance:Lorg/chromium/chrome/browser/ntp/NativePageAssassin;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NativePageAssassin;->mRecentTabs:Ljava/util/ArrayList;

    .line 40
    return-void
.end method

.method private freeze(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 89
    if-nez p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getNativePage()Lorg/chromium/chrome/browser/NativePage;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/chromium/chrome/browser/FrozenNativePage;

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/NativePage;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->freezeNativePage()V

    goto :goto_0
.end method

.method public static getInstance()Lorg/chromium/chrome/browser/ntp/NativePageAssassin;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lorg/chromium/chrome/browser/ntp/NativePageAssassin;->sInstance:Lorg/chromium/chrome/browser/ntp/NativePageAssassin;

    return-object v0
.end method


# virtual methods
.method public freezeAllHiddenPages()V
    .locals 2

    .prologue
    .line 82
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NativePageAssassin;->mRecentTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NativePageAssassin;->mRecentTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/Tab;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ntp/NativePageAssassin;->freeze(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 82
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NativePageAssassin;->mRecentTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 86
    return-void
.end method

.method public tabHidden(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NativePageAssassin;->mRecentTabs:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NativePageAssassin;->mRecentTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NativePageAssassin;->mRecentTabs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/Tab;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ntp/NativePageAssassin;->freeze(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0
.end method

.method public tabShown(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NativePageAssassin;->mRecentTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 57
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NativePageAssassin;->mRecentTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/Tab;

    .line 58
    if-ne v0, p1, :cond_0

    .line 59
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NativePageAssassin;->mRecentTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 56
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 62
    :cond_1
    return-void
.end method
