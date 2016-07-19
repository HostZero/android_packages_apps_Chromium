.class Lorg/chromium/chrome/browser/ntp/snippets/SnippetHeaderItemViewHolder;
.super Lorg/chromium/chrome/browser/ntp/snippets/SnippetListItemViewHolder;
.source "SnippetHeaderItemViewHolder.java"


# instance fields
.field private mHeaderTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetListItemViewHolder;-><init>(Landroid/view/View;Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;)V

    .line 24
    sget v0, Lorg/chromium/chrome/R$id;->snippets_list_header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetHeaderItemViewHolder;->mHeaderTextView:Landroid/widget/TextView;

    .line 25
    return-void
.end method

.method public static createView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->new_tab_page_snippets_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBindViewHolder(Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetListItem;)V
    .locals 5

    .prologue
    .line 40
    check-cast p1, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetHeader;

    .line 42
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetHeaderItemViewHolder;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->snippets_header:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetHeader;->mRecommendationBasis:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetHeaderItemViewHolder;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    return-void
.end method
