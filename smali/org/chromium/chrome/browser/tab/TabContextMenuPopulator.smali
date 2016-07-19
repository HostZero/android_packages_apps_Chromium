.class public Lorg/chromium/chrome/browser/tab/TabContextMenuPopulator;
.super Ljava/lang/Object;
.source "TabContextMenuPopulator.java"

# interfaces
.implements Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;


# instance fields
.field private final mPopulator:Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;

.field private final mTab:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/TabContextMenuPopulator;->mPopulator:Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;

    .line 30
    iput-object p2, p0, Lorg/chromium/chrome/browser/tab/TabContextMenuPopulator;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    .line 31
    return-void
.end method


# virtual methods
.method public buildContextMenu(Landroid/view/ContextMenu;Landroid/content/Context;Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;)V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabContextMenuPopulator;->mPopulator:Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;

    invoke-interface {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;->buildContextMenu(Landroid/view/ContextMenu;Landroid/content/Context;Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;)V

    .line 41
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabContextMenuPopulator;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getTabObservers()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v1

    .line 42
    :goto_0
    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v1}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabObserver;

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabContextMenuPopulator;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-interface {v0, v2, p1}, Lorg/chromium/chrome/browser/tab/TabObserver;->onContextMenuShown(Lorg/chromium/chrome/browser/tab/Tab;Landroid/view/ContextMenu;)V

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method public onItemSelected(Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabContextMenuPopulator;->mPopulator:Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;

    invoke-interface {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;->onItemSelected(Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;I)Z

    move-result v0

    return v0
.end method

.method public shouldShowContextMenu(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;)Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabContextMenuPopulator;->mPopulator:Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/contextmenu/ContextMenuPopulator;->shouldShowContextMenu(Lorg/chromium/chrome/browser/contextmenu/ContextMenuParams;)Z

    move-result v0

    return v0
.end method
