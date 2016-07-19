.class Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;
.super Lorg/chromium/chrome/browser/ntp/snippets/SnippetListItemViewHolder;
.source "SnippetCardItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mArticleSnippetTextView:Landroid/widget/TextView;

.field public mHeadlineTextView:Landroid/widget/TextView;

.field public mPosition:I

.field public mPublisherTextView:Landroid/widget/TextView;

.field public mReadMoreLinkTextView:Landroid/widget/TextView;

.field public mThumbnailView:Landroid/widget/ImageView;

.field public mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetListItemViewHolder;-><init>(Landroid/view/View;Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;)V

    .line 53
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    sget v0, Lorg/chromium/chrome/R$id;->article_thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;->mThumbnailView:Landroid/widget/ImageView;

    .line 55
    sget v0, Lorg/chromium/chrome/R$id;->article_headline:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;->mHeadlineTextView:Landroid/widget/TextView;

    .line 56
    sget v0, Lorg/chromium/chrome/R$id;->article_publisher:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;->mPublisherTextView:Landroid/widget/TextView;

    .line 57
    sget v0, Lorg/chromium/chrome/R$id;->article_snippet:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;->mArticleSnippetTextView:Landroid/widget/TextView;

    .line 58
    sget v0, Lorg/chromium/chrome/R$id;->read_more_link:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;->mReadMoreLinkTextView:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;->mReadMoreLinkTextView:Landroid/widget/TextView;

    new-instance v1, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder$1;-><init>(Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    new-instance v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder$2;-><init>(Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 81
    return-void
.end method

.method public static createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->new_tab_page_snippets_card:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBindViewHolder(Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetListItem;)V
    .locals 2

    .prologue
    .line 101
    check-cast p1, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle;

    .line 103
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;->mHeadlineTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;->mPublisherTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle;->mPublisher:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;->mArticleSnippetTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle;->mPreviewText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p1, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;->mUrl:Ljava/lang/String;

    .line 107
    iget v0, p1, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle;->mPosition:I

    iput v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;->mPosition:I

    .line 109
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle;->setThumbnailOnView(Landroid/widget/ImageView;)V

    .line 110
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/16 v0, 0x8

    .line 86
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;->mArticleSnippetTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 88
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;->mArticleSnippetTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;->mReadMoreLinkTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    if-nez v0, :cond_1

    const-string/jumbo v1, "MobileNTP.Snippets.ShowMore"

    .line 93
    :goto_0
    if-nez v0, :cond_2

    const-string/jumbo v0, "NewTabPage.Snippets.CardExpanded"

    .line 95
    :goto_1
    invoke-static {v1}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 96
    iget v1, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;->mPosition:I

    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordSparseSlowlyHistogram(Ljava/lang/String;I)V

    .line 97
    return-void

    .line 91
    :cond_1
    const-string/jumbo v1, "MobileNTP.Snippets.ShowLess"

    goto :goto_0

    .line 93
    :cond_2
    const-string/jumbo v0, "NewTabPage.Snippets.CardHidden"

    goto :goto_1
.end method
