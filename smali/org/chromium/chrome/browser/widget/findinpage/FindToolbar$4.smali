.class Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$4;
.super Ljava/lang/Object;
.source "FindToolbar.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$4;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$4;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mAccessibilityDidActivateResult:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->access$202(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;Z)Z

    .line 218
    if-nez p2, :cond_1

    .line 219
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$4;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    iget-object v0, v0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindQuery:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 220
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$4;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    const/4 v1, 0x1

    # setter for: Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mSearchKeyShouldTriggerSearch:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->access$302(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;Z)Z

    .line 222
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$4;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    iget-object v0, v0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindQuery:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;

    invoke-static {v0}, Lorg/chromium/ui/UiUtils;->hideKeyboard(Landroid/view/View;)Z

    .line 224
    :cond_1
    return-void
.end method
