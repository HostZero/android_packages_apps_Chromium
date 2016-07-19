.class Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder$2;
.super Ljava/lang/Object;
.source "SnippetCardItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder$2;->this$0:Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 74
    const-string/jumbo v0, "NewTabPage.Snippets.CardShown"

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder$2;->this$0:Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;

    iget v1, v1, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;->mPosition:I

    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordSparseSlowlyHistogram(Ljava/lang/String;I)V

    .line 76
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method
