.class Lorg/chromium/chrome/browser/omnibox/SuggestionView$1;
.super Landroid/view/View;
.source "SuggestionView.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/SuggestionView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$1;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 151
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$1;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineIcon:Lorg/chromium/chrome/browser/widget/TintedDrawable;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$000(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/widget/TintedDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$1;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineIcon:Lorg/chromium/chrome/browser/widget/TintedDrawable;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$000(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/widget/TintedDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$1;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineIcon:Lorg/chromium/chrome/browser/widget/TintedDrawable;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$000(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/widget/TintedDrawable;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$1;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->setState([I)Z

    .line 154
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 123
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 125
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$1;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineIcon:Lorg/chromium/chrome/browser/widget/TintedDrawable;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$000(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/widget/TintedDrawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 127
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$1;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$1;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineIcon:Lorg/chromium/chrome/browser/widget/TintedDrawable;
    invoke-static {v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$000(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/widget/TintedDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$1;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$1;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineIcon:Lorg/chromium/chrome/browser/widget/TintedDrawable;
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$000(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/widget/TintedDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 130
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$1;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineIcon:Lorg/chromium/chrome/browser/widget/TintedDrawable;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$000(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/widget/TintedDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 136
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    if-nez p1, :cond_0

    .line 139
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$1;->setClickable(Z)V

    .line 140
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$1;->setFocusable(Z)V

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$1;->setClickable(Z)V

    .line 143
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$1;->setFocusable(Z)V

    goto :goto_0
.end method
