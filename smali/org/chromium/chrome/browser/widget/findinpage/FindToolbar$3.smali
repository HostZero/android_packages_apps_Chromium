.class Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$3;
.super Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelObserver;
.source "FindToolbar.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$3;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;I)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$3;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->deactivate()V

    .line 195
    return-void
.end method

.method public tabRemoved(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$3;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    # getter for: Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mCurrentTab:Lorg/chromium/chrome/browser/tab/Tab;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->access$100(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$3;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->deactivate()V

    goto :goto_0
.end method
