.class Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;
.super Landroid/support/b/a/f;
.source "FirstRunPagerAdapter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mFreProperties:Landroid/os/Bundle;

.field private final mPages:Ljava/util/List;

.field private mStopAtTheFirstPage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/FragmentManager;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/support/b/a/f;-><init>(Landroid/app/FragmentManager;)V

    .line 27
    sget-boolean v0, Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 29
    :cond_1
    sget-boolean v0, Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_2
    iput-object p2, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;->mPages:Ljava/util/List;

    .line 31
    iput-object p3, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;->mFreProperties:Landroid/os/Bundle;

    .line 32
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;->mStopAtTheFirstPage:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;->mPages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 47
    sget-boolean v0, Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;->mPages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;->mPages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/firstrun/FirstRunPage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    if-nez v0, :cond_2

    move-object v0, v1

    .line 61
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 56
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 57
    iget-object v2, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;->mFreProperties:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, p1, v2}, Lorg/chromium/chrome/browser/firstrun/FirstRunPage;->addProperties(Landroid/os/Bundle;II)Landroid/os/Bundle;

    .line 59
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/firstrun/FirstRunPage;->setArguments(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 74
    const/4 v0, -0x2

    return v0
.end method

.method setStopAtTheFirstPage(Z)V
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;->mStopAtTheFirstPage:Z

    if-eq p1, v0, :cond_0

    .line 40
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;->mStopAtTheFirstPage:Z

    .line 41
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunPagerAdapter;->notifyDataSetChanged()V

    .line 43
    :cond_0
    return-void
.end method
