.class public Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;
.super Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;
.source "CustomTabLayoutManager.java"


# instance fields
.field mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;-><init>(Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerHost;)V

    .line 29
    new-instance v0, Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager$1;-><init>(Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;)Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;->getTabModelSelector()Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public init(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Landroid/view/ViewGroup;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V
    .locals 3

    .prologue
    .line 55
    invoke-super/range {p0 .. p7}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManagerDocument;->init(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;Lorg/chromium/chrome/browser/tabmodel/TabCreatorManager;Lorg/chromium/chrome/browser/compositor/layouts/content/TabContentManager;Landroid/view/ViewGroup;Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManagementDelegate;Lorg/chromium/chrome/browser/dom_distiller/ReaderModeManagerDelegate;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V

    .line 57
    invoke-interface {p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    iget-object v2, p0, Lorg/chromium/chrome/browser/customtabs/CustomTabLayoutManager;->mTabModelObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;

    invoke-interface {v0, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method
