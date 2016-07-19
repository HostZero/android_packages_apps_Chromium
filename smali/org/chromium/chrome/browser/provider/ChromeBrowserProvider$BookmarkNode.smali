.class public Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;
.super Ljava/lang/Object;
.source "ChromeBrowserProvider.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final mChildren:Ljava/util/List;

.field private mFavicon:[B

.field private final mId:J

.field private final mName:Ljava/lang/String;

.field private final mParent:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;

.field private mThumbnail:[B

.field private final mType:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 855
    new-instance v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode$1;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode$1;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;)V
    .locals 1

    .prologue
    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 685
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mChildren:Ljava/util/List;

    .line 694
    iput-wide p1, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mId:J

    .line 695
    iput-object p4, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mName:Ljava/lang/String;

    .line 696
    iput-object p5, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mUrl:Ljava/lang/String;

    .line 697
    iput-object p3, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mType:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

    .line 698
    iput-object p6, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mParent:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;

    .line 699
    return-void
.end method

.method private static byteArrayEqual([B[B)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 797
    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    array-length v2, p1

    if-nez v2, :cond_1

    .line 799
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 797
    goto :goto_0

    .line 798
    :cond_2
    if-nez p1, :cond_3

    if-eqz p0, :cond_3

    array-length v2, p0

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 799
    :cond_3
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method private writeNodeContents(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 846
    iget-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 847
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 849
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mType:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 850
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mFavicon:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 851
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mThumbnail:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 852
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mParent:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mParent:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;

    iget-wide v0, v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mId:J

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 853
    return-void

    .line 852
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private writeNodeContentsRecursive(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 838
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->writeNodeContents(Landroid/os/Parcel;)V

    .line 839
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 840
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;

    .line 841
    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->writeNodeContentsRecursive(Landroid/os/Parcel;)V

    goto :goto_0

    .line 843
    :cond_0
    return-void
.end method


# virtual methods
.method public addChild(Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;)V
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    return-void
.end method

.method public children()Ljava/util/List;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 816
    const/4 v0, 0x0

    return v0
.end method

.method public equalContents(Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 783
    if-eqz p1, :cond_8

    iget-wide v4, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mId:J

    iget-wide v6, p1, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mId:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mName:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p1, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mName:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v1

    :goto_1
    xor-int/2addr v0, v3

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mName:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mUrl:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    iget-object v3, p1, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mUrl:Ljava/lang/String;

    if-nez v3, :cond_5

    move v3, v1

    :goto_3
    xor-int/2addr v0, v3

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mUrl:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mType:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

    iget-object v3, p1, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mType:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mFavicon:[B

    iget-object v3, p1, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mFavicon:[B

    invoke-static {v0, v3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->byteArrayEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mThumbnail:[B

    iget-object v3, p1, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mThumbnail:[B

    invoke-static {v0, v3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->byteArrayEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mParent:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;

    if-nez v0, :cond_6

    move v0, v1

    :goto_4
    iget-object v3, p1, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mParent:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;

    if-nez v3, :cond_7

    move v3, v1

    :goto_5
    xor-int/2addr v0, v3

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->children()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->children()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_8

    :goto_6
    return v1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v3, v2

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move v3, v2

    goto :goto_5

    :cond_8
    move v1, v2

    goto :goto_6
.end method

.method public getHierarchyRoot()Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;
    .locals 1

    .prologue
    .line 830
    .line 831
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->parent()Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 832
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->parent()Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;

    move-result-object p0

    goto :goto_0

    .line 834
    :cond_0
    return-object p0
.end method

.method public id()J
    .locals 2

    .prologue
    .line 705
    iget-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mId:J

    return-wide v0
.end method

.method public parent()Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mParent:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;

    return-object v0
.end method

.method public setFavicon([B)V
    .locals 0

    .prologue
    .line 805
    iput-object p1, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mFavicon:[B

    .line 806
    return-void
.end method

.method public setThumbnail([B)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mThumbnail:[B

    .line 812
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 822
    iget-wide v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 825
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->getHierarchyRoot()Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;

    move-result-object v0

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->writeNodeContentsRecursive(Landroid/os/Parcel;)V

    .line 826
    return-void
.end method
