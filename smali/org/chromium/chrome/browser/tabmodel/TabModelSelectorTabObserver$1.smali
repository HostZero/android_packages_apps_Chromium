.class Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver$1;
.super Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelObserver;
.source "TabModelSelectorTabObserver.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public didAddTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/tab/Tab;->addObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 40
    return-void
.end method

.method public didCloseTab(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/tab/Tab;->removeObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 45
    return-void
.end method

.method public tabRemoved(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver$1;->this$0:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/tab/Tab;->removeObserver(Lorg/chromium/chrome/browser/tab/TabObserver;)V

    .line 50
    return-void
.end method
