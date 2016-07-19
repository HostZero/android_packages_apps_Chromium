.class Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder$1;
.super Ljava/lang/Object;
.source "SnippetCardItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder$1;->this$0:Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder$1;->this$0:Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder$1;->this$0:Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;

    iget-object v1, v1, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;->loadUrl(Ljava/lang/String;)V

    .line 63
    const-string/jumbo v0, "MobileNTP.Snippets.Click"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 64
    const-string/jumbo v0, "NewTabPage.Snippets.CardClicked"

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder$1;->this$0:Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;

    iget v1, v1, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;->mPosition:I

    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordSparseSlowlyHistogram(Ljava/lang/String;I)V

    .line 66
    const-string/jumbo v0, "NewTabPage.Snippets.Interactions"

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    .line 68
    const/4 v0, 0x7

    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageUma;->recordAction(I)V

    .line 69
    return-void
.end method
