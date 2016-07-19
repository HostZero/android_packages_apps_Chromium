.class Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NearbyUrlsAdapter.java"


# instance fields
.field private final mIconUrlToIconMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;->mIconUrlToIconMap:Ljava/util/HashMap;

    .line 32
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    .line 64
    if-nez p2, :cond_0

    .line 65
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 66
    sget v1, Lorg/chromium/chrome/R$layout;->physical_web_list_item_nearby_url:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 69
    :cond_0
    sget v0, Lorg/chromium/chrome/R$id;->nearby_urls_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 70
    sget v1, Lorg/chromium/chrome/R$id;->nearby_urls_url:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 71
    sget v2, Lorg/chromium/chrome/R$id;->nearby_urls_description:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 72
    sget v3, Lorg/chromium/chrome/R$id;->nearby_urls_icon:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 74
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/chromium/chrome/browser/physicalweb/PwsResult;

    .line 75
    iget-object v5, p0, Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;->mIconUrlToIconMap:Ljava/util/HashMap;

    iget-object v6, v4, Lorg/chromium/chrome/browser/physicalweb/PwsResult;->iconUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 77
    iget-object v6, v4, Lorg/chromium/chrome/browser/physicalweb/PwsResult;->title:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, v4, Lorg/chromium/chrome/browser/physicalweb/PwsResult;->siteUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, v4, Lorg/chromium/chrome/browser/physicalweb/PwsResult;->description:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    return-object p2
.end method

.method public hasIcon(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;->mIconUrlToIconMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasSiteUrl(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;->getCount()I

    move-result v3

    move v2, v1

    .line 92
    :goto_0
    if-ge v2, v3, :cond_1

    .line 93
    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/physicalweb/PwsResult;

    .line 94
    iget-object v0, v0, Lorg/chromium/chrome/browser/physicalweb/PwsResult;->siteUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x1

    .line 99
    :goto_1
    return v0

    .line 92
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 99
    goto :goto_1
.end method

.method public setIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 40
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 41
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;->mIconUrlToIconMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/physicalweb/NearbyUrlsAdapter;->notifyDataSetChanged()V

    .line 44
    :cond_0
    return-void
.end method
