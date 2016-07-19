.class Lorg/chromium/chrome/browser/omnibox/SuggestionView$3;
.super Ljava/lang/Object;
.source "SuggestionView.java"

# interfaces
.implements Lorg/chromium/chrome/browser/omnibox/AnswersImage$AnswersImageObserver;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$3;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnswersImageChanged(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$3;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1000(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    move-result-object v0

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mAnswerImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$300(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 545
    return-void
.end method
