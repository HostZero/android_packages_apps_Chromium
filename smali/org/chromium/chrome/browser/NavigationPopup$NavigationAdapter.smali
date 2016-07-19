.class Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;
.super Landroid/widget/BaseAdapter;
.source "NavigationPopup.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/NavigationPopup;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/NavigationPopup;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;->this$0:Lorg/chromium/chrome/browser/NavigationPopup;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/NavigationPopup;Lorg/chromium/chrome/browser/NavigationPopup$1;)V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;-><init>(Lorg/chromium/chrome/browser/NavigationPopup;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;->this$0:Lorg/chromium/chrome/browser/NavigationPopup;

    # getter for: Lorg/chromium/chrome/browser/NavigationPopup;->mHistory:Lorg/chromium/content_public/browser/NavigationHistory;
    invoke-static {v0}, Lorg/chromium/chrome/browser/NavigationPopup;->access$200(Lorg/chromium/chrome/browser/NavigationPopup;)Lorg/chromium/content_public/browser/NavigationHistory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/NavigationHistory;->getEntryCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;->this$0:Lorg/chromium/chrome/browser/NavigationPopup;

    # getter for: Lorg/chromium/chrome/browser/NavigationPopup;->mHistory:Lorg/chromium/content_public/browser/NavigationHistory;
    invoke-static {v0}, Lorg/chromium/chrome/browser/NavigationPopup;->access$200(Lorg/chromium/chrome/browser/NavigationPopup;)Lorg/chromium/content_public/browser/NavigationHistory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content_public/browser/NavigationHistory;->getEntryAtIndex(I)Lorg/chromium/content_public/browser/NavigationEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/NavigationEntry;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/NavigationEntry;->getIndex()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 253
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 254
    check-cast p2, Landroid/widget/TextView;

    .line 258
    :goto_0
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/NavigationEntry;

    .line 260
    invoke-virtual {v0}, Lorg/chromium/content_public/browser/NavigationEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/NavigationEntry;->getVirtualUrl()Ljava/lang/String;

    move-result-object v1

    .line 262
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/NavigationEntry;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 263
    :cond_1
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v1, p0, Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;->this$0:Lorg/chromium/chrome/browser/NavigationPopup;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/NavigationEntry;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    # invokes: Lorg/chromium/chrome/browser/NavigationPopup;->updateBitmapForTextView(Landroid/widget/TextView;Landroid/graphics/Bitmap;)V
    invoke-static {v1, p2, v0}, Lorg/chromium/chrome/browser/NavigationPopup;->access$400(Lorg/chromium/chrome/browser/NavigationPopup;Landroid/widget/TextView;Landroid/graphics/Bitmap;)V

    .line 266
    return-object p2

    .line 256
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;->this$0:Lorg/chromium/chrome/browser/NavigationPopup;

    # getter for: Lorg/chromium/chrome/browser/NavigationPopup;->mListItemFactory:Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;
    invoke-static {v0}, Lorg/chromium/chrome/browser/NavigationPopup;->access$300(Lorg/chromium/chrome/browser/NavigationPopup;)Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->createListItem()Landroid/widget/TextView;

    move-result-object p2

    goto :goto_0
.end method
