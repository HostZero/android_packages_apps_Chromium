.class public Lorg/chromium/chrome/browser/ntp/MostVisitedItem;
.super Ljava/lang/Object;
.source "MostVisitedItem.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mIndex:I

.field private mManager:Lorg/chromium/chrome/browser/ntp/MostVisitedItem$MostVisitedItemManager;

.field private mOfflineAvailable:Z

.field private mTileType:I

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field private mWhitelistIconPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/ntp/MostVisitedItem$MostVisitedItemManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->mManager:Lorg/chromium/chrome/browser/ntp/MostVisitedItem$MostVisitedItemManager;

    .line 73
    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->mTitle:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->mUrl:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->mWhitelistIconPath:Ljava/lang/String;

    .line 76
    iput-boolean p5, p0, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->mOfflineAvailable:Z

    .line 77
    iput p6, p0, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->mIndex:I

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->mTileType:I

    .line 79
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->mIndex:I

    return v0
.end method

.method public getTileType()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->mTileType:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getWhitelistIconPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->mWhitelistIconPath:Ljava/lang/String;

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 86
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 87
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->mView:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 90
    return-void
.end method

.method public isOfflineAvailable()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->mOfflineAvailable:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->mManager:Lorg/chromium/chrome/browser/ntp/MostVisitedItem$MostVisitedItemManager;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem$MostVisitedItemManager;->open(Lorg/chromium/chrome/browser/ntp/MostVisitedItem;)V

    .line 170
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->mManager:Lorg/chromium/chrome/browser/ntp/MostVisitedItem$MostVisitedItemManager;

    invoke-interface {v0, p1, p0}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem$MostVisitedItemManager;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 160
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->mManager:Lorg/chromium/chrome/browser/ntp/MostVisitedItem$MostVisitedItemManager;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {v0, v1, p0}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem$MostVisitedItemManager;->onMenuItemClick(ILorg/chromium/chrome/browser/ntp/MostVisitedItem;)Z

    move-result v0

    return v0
.end method

.method public setIndex(I)V
    .locals 0

    .prologue
    .line 138
    iput p1, p0, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->mIndex:I

    .line 139
    return-void
.end method

.method public setTileType(I)V
    .locals 0

    .prologue
    .line 154
    iput p1, p0, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->mTileType:I

    .line 155
    return-void
.end method
