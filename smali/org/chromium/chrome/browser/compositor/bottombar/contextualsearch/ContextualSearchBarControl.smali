.class public Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;
.super Ljava/lang/Object;
.source "ContextualSearchBarControl.java"


# instance fields
.field private final mContextControl:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchContextControl;

.field private final mSearchTermControl:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchTermControl;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;Landroid/content/Context;Landroid/view/ViewGroup;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchContextControl;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchContextControl;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;Landroid/content/Context;Landroid/view/ViewGroup;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;->mContextControl:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchContextControl;

    .line 40
    new-instance v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchTermControl;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchTermControl;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel;Landroid/content/Context;Landroid/view/ViewGroup;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;->mSearchTermControl:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchTermControl;

    .line 41
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;->mContextControl:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchContextControl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchContextControl;->destroy()V

    .line 48
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;->mSearchTermControl:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchTermControl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchTermControl;->destroy()V

    .line 49
    return-void
.end method

.method public getSearchContextViewId()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;->mContextControl:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchContextControl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchContextControl;->getViewId()I

    move-result v0

    return v0
.end method

.method public getSearchTermViewId()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;->mSearchTermControl:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchTermControl;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchTermControl;->getViewId()I

    move-result v0

    return v0
.end method

.method public setSearchContext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;->mContextControl:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchContextControl;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchContextControl;->setSearchContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public setSearchTerm(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchBarControl;->mSearchTermControl:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchTermControl;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchTermControl;->setSearchTerm(Ljava/lang/String;)V

    .line 66
    return-void
.end method
