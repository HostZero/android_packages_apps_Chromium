.class public Lorg/chromium/chrome/browser/NavigationPopup;
.super Landroid/widget/ListPopupWindow;
.source "NavigationPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final mAdapter:Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;

.field private final mContext:Landroid/content/Context;

.field private mDefaultFavicon:Landroid/graphics/Bitmap;

.field private mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

.field private final mFaviconSize:I

.field private final mHistory:Lorg/chromium/content_public/browser/NavigationHistory;

.field private mInitialized:Z

.field private final mListItemFactory:Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;

.field private final mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

.field private final mProfile:Lorg/chromium/chrome/browser/profiles/Profile;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/profiles/Profile;Landroid/content/Context;Lorg/chromium/content_public/browser/NavigationController;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    const v0, 0x1010300

    invoke-direct {p0, p2, v2, v0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    iput-object p1, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    .line 75
    iput-object p2, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mContext:Landroid/content/Context;

    .line 76
    iput-object p3, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    .line 77
    iget-object v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    const/16 v1, 0x8

    invoke-interface {v0, p4, v1}, Lorg/chromium/content_public/browser/NavigationController;->getDirectedNavigationHistory(ZI)Lorg/chromium/content_public/browser/NavigationHistory;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mHistory:Lorg/chromium/content_public/browser/NavigationHistory;

    .line 79
    new-instance v0, Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;

    invoke-direct {v0, p0, v2}, Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;-><init>(Lorg/chromium/chrome/browser/NavigationPopup;Lorg/chromium/chrome/browser/NavigationPopup$1;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mAdapter:Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;

    .line 81
    iget-object v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->default_favicon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mFaviconSize:I

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/NavigationPopup;->setModal(Z)V

    .line 84
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/NavigationPopup;->setInputMethodMode(I)V

    .line 85
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/NavigationPopup;->setHeight(I)V

    .line 86
    invoke-virtual {p0, p0}, Lorg/chromium/chrome/browser/NavigationPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 88
    new-instance v0, Landroid/widget/HeaderViewListAdapter;

    iget-object v1, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mAdapter:Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/NavigationPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    new-instance v0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;

    invoke-direct {v0, p2}, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mListItemFactory:Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;

    .line 91
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/NavigationPopup;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/NavigationPopup;->onFaviconAvailable(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/NavigationPopup;)Lorg/chromium/content_public/browser/NavigationHistory;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mHistory:Lorg/chromium/content_public/browser/NavigationHistory;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/NavigationPopup;)Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mListItemFactory:Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/NavigationPopup;Landroid/widget/TextView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/NavigationPopup;->updateBitmapForTextView(Landroid/widget/TextView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private initialize()V
    .locals 7

    .prologue
    .line 114
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mInitialized:Z

    .line 116
    new-instance v0, Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/favicon/FaviconHelper;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    .line 118
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 119
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mHistory:Lorg/chromium/content_public/browser/NavigationHistory;

    invoke-virtual {v2}, Lorg/chromium/content_public/browser/NavigationHistory;->getEntryCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 120
    iget-object v2, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mHistory:Lorg/chromium/content_public/browser/NavigationHistory;

    invoke-virtual {v2, v0}, Lorg/chromium/content_public/browser/NavigationHistory;->getEntryAtIndex(I)Lorg/chromium/content_public/browser/NavigationEntry;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Lorg/chromium/content_public/browser/NavigationEntry;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 122
    invoke-virtual {v2}, Lorg/chromium/content_public/browser/NavigationEntry;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 124
    new-instance v3, Lorg/chromium/chrome/browser/NavigationPopup$1;

    invoke-direct {v3, p0, v2}, Lorg/chromium/chrome/browser/NavigationPopup$1;-><init>(Lorg/chromium/chrome/browser/NavigationPopup;Ljava/lang/String;)V

    .line 130
    iget-object v4, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    iget-object v5, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    iget v6, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mFaviconSize:I

    invoke-virtual {v4, v5, v2, v6, v3}, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->getLocalFaviconImageForURL(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;)Z

    .line 132
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    new-instance v0, Lorg/chromium/chrome/browser/NavigationPopup$2;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/NavigationPopup$2;-><init>(Lorg/chromium/chrome/browser/NavigationPopup;)V

    .line 142
    iget-object v1, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    iget-object v2, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mProfile:Lorg/chromium/chrome/browser/profiles/Profile;

    const-string/jumbo v3, "chrome://history/"

    iget v4, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mFaviconSize:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->getLocalFaviconImageForURL(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;)Z

    .line 144
    return-void
.end method

.method private onFaviconAvailable(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 152
    if-nez p2, :cond_3

    .line 153
    iget-object v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mDefaultFavicon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$drawable;->default_favicon:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mDefaultFavicon:Landroid/graphics/Bitmap;

    .line 157
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mDefaultFavicon:Landroid/graphics/Bitmap;

    .line 159
    :goto_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mHistory:Lorg/chromium/content_public/browser/NavigationHistory;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/NavigationHistory;->getEntryCount()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 160
    iget-object v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mHistory:Lorg/chromium/content_public/browser/NavigationHistory;

    invoke-virtual {v0, v2}, Lorg/chromium/content_public/browser/NavigationHistory;->getEntryAtIndex(I)Lorg/chromium/content_public/browser/NavigationEntry;

    move-result-object v3

    .line 161
    invoke-virtual {v3}, Lorg/chromium/content_public/browser/NavigationEntry;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v0}, Lorg/chromium/content_public/browser/NavigationEntry;->updateFavicon(Landroid/graphics/Bitmap;)V

    .line 159
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 163
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mAdapter:Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/NavigationPopup$NavigationAdapter;->notifyDataSetChanged()V

    .line 164
    return-void

    :cond_3
    move-object v1, p2

    goto :goto_0
.end method

.method private updateBitmapForTextView(Landroid/widget/TextView;Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 175
    if-eqz p2, :cond_0

    .line 176
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v1, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    .line 177
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v2, 0x77

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 181
    :goto_0
    iget v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mFaviconSize:I

    iget v2, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mFaviconSize:I

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 182
    invoke-virtual {p1, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 183
    return-void

    .line 179
    :cond_0
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mFaviconHelper:Lorg/chromium/chrome/browser/favicon/FaviconHelper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/favicon/FaviconHelper;->destroy()V

    .line 109
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mInitialized:Z

    .line 110
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 111
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/NavigationEntry;

    .line 169
    iget-object v1, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/NavigationEntry;->getIndex()I

    move-result v0

    invoke-interface {v1, v0}, Lorg/chromium/content_public/browser/NavigationController;->goToNavigationIndex(I)V

    .line 170
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/NavigationPopup;->dismiss()V

    .line 171
    return-void
.end method

.method public shouldBeShown()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mHistory:Lorg/chromium/content_public/browser/NavigationHistory;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/NavigationHistory;->getEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/NavigationPopup;->mInitialized:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/NavigationPopup;->initialize()V

    .line 103
    :cond_0
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 104
    return-void
.end method
