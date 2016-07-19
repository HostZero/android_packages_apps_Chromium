.class Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$6;
.super Ljava/lang/Object;
.source "FindToolbar.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$6;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 269
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v0

    .line 271
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$6;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    # getter for: Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindInPageBridge:Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;
    invoke-static {v2}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->access$400(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 275
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$6;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    # getter for: Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mSearchKeyShouldTriggerSearch:Z
    invoke-static {v2}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->access$300(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 276
    iget-object v2, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$6;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    # setter for: Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mSearchKeyShouldTriggerSearch:Z
    invoke-static {v2, v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->access$302(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;Z)Z

    .line 277
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$6;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    # invokes: Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->hideKeyboardAndStartFinding(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->access$000(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;Z)V

    :goto_1
    move v0, v1

    .line 283
    goto :goto_0

    .line 279
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$6;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    iget-object v0, v0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindQuery:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;

    invoke-static {v0}, Lorg/chromium/ui/UiUtils;->hideKeyboard(Landroid/view/View;)Z

    .line 280
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$6;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    # getter for: Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindInPageBridge:Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;
    invoke-static {v0}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->access$400(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;)Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/findinpage/FindInPageBridge;->activateFindInPageResultForAccessibility()V

    .line 281
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$6;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    # setter for: Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mAccessibilityDidActivateResult:Z
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->access$202(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;Z)Z

    goto :goto_1
.end method
