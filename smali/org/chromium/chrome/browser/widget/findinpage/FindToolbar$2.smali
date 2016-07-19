.class Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$2;
.super Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelSelectorObserver;
.source "FindToolbar.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$2;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelSelectorObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabModelSelected(Lorg/chromium/chrome/browser/tabmodel/TabModel;Lorg/chromium/chrome/browser/tabmodel/TabModel;)V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$2;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->deactivate()V

    .line 187
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$2;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    invoke-interface {p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->isIncognito()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->updateVisualsForTabModel(Z)V

    .line 188
    return-void
.end method
