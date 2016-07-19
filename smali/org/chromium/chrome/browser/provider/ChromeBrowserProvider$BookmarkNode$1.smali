.class final Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode$1;
.super Ljava/lang/Object;
.source "ChromeBrowserProvider.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field private mNodeMap:Landroid/util/LongSparseArray;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getNode(J)Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 874
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 880
    :goto_0
    return-object v0

    .line 875
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 876
    iget-object v2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode$1;->mNodeMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v2

    if-gez v2, :cond_1

    .line 877
    const-string/jumbo v1, "ChromeBrowserProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid BookmarkNode hierarchy. Unknown id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 880
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode$1;->mNodeMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;

    goto :goto_0
.end method

.method private readNodeContents(Landroid/os/Parcel;)Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;
    .locals 12

    .prologue
    .line 884
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 885
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 886
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 887
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 888
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 889
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 890
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 891
    if-ltz v0, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;->values()[Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 892
    :cond_0
    const-string/jumbo v0, "ChromeBrowserProvider"

    const-string/jumbo v1, "Invalid node type ordinal value."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const/4 v1, 0x0

    .line 900
    :goto_0
    return-object v1

    .line 896
    :cond_1
    new-instance v1, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;

    invoke-static {}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;->values()[Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-direct {p0, v10, v11}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode$1;->getNode(J)Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;-><init>(JLorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;)V

    .line 898
    invoke-virtual {v1, v8}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->setFavicon([B)V

    .line 899
    invoke-virtual {v1, v9}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->setThumbnail([B)V

    goto :goto_0
.end method

.method private readNodeContentsRecursive(Landroid/os/Parcel;)Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 904
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode$1;->readNodeContents(Landroid/os/Parcel;)Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;

    move-result-object v1

    .line 905
    if-nez v1, :cond_0

    .line 919
    :goto_0
    return-object v0

    .line 907
    :cond_0
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->id()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 908
    iget-object v3, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode$1;->mNodeMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v3

    if-ltz v3, :cond_1

    .line 909
    const-string/jumbo v2, "ChromeBrowserProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Invalid BookmarkNode hierarchy. Duplicate id "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->id()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 912
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode$1;->mNodeMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 914
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 915
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    .line 916
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode$1;->readNodeContentsRecursive(Landroid/os/Parcel;)Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;->addChild(Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;)V

    .line 915
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 919
    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 855
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode$1;->createFromParcel(Landroid/os/Parcel;)Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;

    move-result-object v0

    return-object v0
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;
    .locals 2

    .prologue
    .line 860
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode$1;->mNodeMap:Landroid/util/LongSparseArray;

    .line 861
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 862
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode$1;->readNodeContentsRecursive(Landroid/os/Parcel;)Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;

    .line 863
    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode$1;->getNode(J)Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;

    move-result-object v0

    .line 864
    iget-object v1, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode$1;->mNodeMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 865
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 855
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode$1;->newArray(I)[Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;
    .locals 1

    .prologue
    .line 870
    new-array v0, p1, [Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$BookmarkNode;

    return-object v0
.end method
