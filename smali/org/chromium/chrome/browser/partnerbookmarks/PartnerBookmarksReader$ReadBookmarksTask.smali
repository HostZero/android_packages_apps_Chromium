.class Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$ReadBookmarksTask;
.super Landroid/os/AsyncTask;
.source "PartnerBookmarksReader.java"


# instance fields
.field private final mRootSync:Ljava/lang/Object;

.field final synthetic this$0:Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;)V
    .locals 1

    .prologue
    .line 122
    iput-object p1, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$ReadBookmarksTask;->this$0:Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$ReadBookmarksTask;->mRootSync:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$1;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$ReadBookmarksTask;-><init>(Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;)V

    return-void
.end method

.method private createRootBookmarksFolderBookmark()Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 203
    new-instance v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;-><init>()V

    .line 204
    iput-wide v4, v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mId:J

    .line 205
    const-string/jumbo v1, "[IMPLIED_ROOT]"

    iput-object v1, v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mTitle:Ljava/lang/String;

    .line 206
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mNativeId:J

    .line 207
    iput-wide v4, v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mParentId:J

    .line 208
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mIsFolder:Z

    .line 209
    return-object v0
.end method

.method private readBookmarkHierarchy(Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;Ljava/util/HashSet;)V
    .locals 9

    .prologue
    .line 215
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 218
    iget-wide v0, p1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 220
    :try_start_0
    iget-object v8, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$ReadBookmarksTask;->mRootSync:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :try_start_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$ReadBookmarksTask;->this$0:Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;

    iget-object v1, p1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mUrl:Ljava/lang/String;

    iget-object v2, p1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mTitle:Ljava/lang/String;

    iget-boolean v3, p1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mIsFolder:Z

    iget-wide v4, p1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mParentId:J

    iget-object v6, p1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mFavicon:[B

    iget-object v7, p1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mTouchicon:[B

    # invokes: Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->onBookmarkPush(Ljava/lang/String;Ljava/lang/String;ZJ[B[B)J
    invoke-static/range {v0 .. v7}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->access$100(Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;Ljava/lang/String;Ljava/lang/String;ZJ[B[B)J

    move-result-wide v0

    iput-wide v0, p1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mNativeId:J

    .line 226
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    :goto_1
    iget-wide v0, p1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mNativeId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 231
    const-string/jumbo v0, "PartnerBookmarksReader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Error creating bookmark \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    const-string/jumbo v1, "PartnerBookmarksReader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error inserting bookmark "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 236
    :cond_2
    iget-boolean v0, p1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mIsFolder:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;

    .line 238
    iget-object v2, v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mParent:Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;

    if-eq v2, p1, :cond_3

    .line 239
    const-string/jumbo v0, "PartnerBookmarksReader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Hierarchy error in bookmark \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'. Skipping."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 243
    :cond_3
    iget-wide v2, p1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mNativeId:J

    iput-wide v2, v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mParentId:J

    .line 244
    invoke-direct {p0, v0, p2}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$ReadBookmarksTask;->readBookmarkHierarchy(Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;Ljava/util/HashSet;)V

    goto :goto_2
.end method

.method private recreateFolderHierarchy(Ljava/util/LinkedHashMap;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 187
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;

    .line 188
    iget-wide v4, v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mId:J

    cmp-long v1, v4, v8

    if-eqz v1, :cond_0

    .line 191
    iget-wide v4, v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mParentId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v4, v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mParentId:J

    iget-wide v6, v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mId:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 192
    :cond_1
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;

    iput-object v1, v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mParent:Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;

    .line 193
    iget-object v1, v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mParent:Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;

    iget-object v1, v1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    :cond_2
    iget-wide v4, v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mParentId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;

    iput-object v1, v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mParent:Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;

    .line 198
    iget-object v1, v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mParent:Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;

    iget-object v1, v1, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    :cond_3
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$ReadBookmarksTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$ReadBookmarksTask;->this$0:Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->getAvailableBookmarks()Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$BookmarkIterator;

    move-result-object v1

    .line 128
    if-nez v1, :cond_0

    .line 176
    :goto_0
    return-object v10

    .line 131
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 132
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 134
    invoke-direct {p0}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$ReadBookmarksTask;->createRootBookmarksFolderBookmark()Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;

    move-result-object v4

    .line 135
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_1
    :goto_1
    invoke-interface {v1}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$BookmarkIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    invoke-interface {v1}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$BookmarkIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;

    .line 139
    if-eqz v0, :cond_1

    .line 142
    iget-wide v6, v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 143
    const-string/jumbo v5, "PartnerBookmarksReader"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Duplicate bookmark id: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mId:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ". Dropping bookmark."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 149
    :cond_2
    iget-boolean v5, v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mIsFolder:Z

    if-nez v5, :cond_3

    iget-object v5, v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 150
    const-string/jumbo v5, "PartnerBookmarksReader"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "More than one bookmark pointing to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mUrl:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ". Keeping only the first one for consistency with Chromium."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 156
    :cond_3
    iget-wide v6, v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, v0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 159
    :cond_4
    invoke-interface {v1}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$BookmarkIterator;->close()V

    .line 162
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$ReadBookmarksTask;->recreateFolderHierarchy(Ljava/util/LinkedHashMap;)V

    .line 163
    iget-object v0, v4, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 164
    const-string/jumbo v0, "PartnerBookmarksReader"

    const-string/jumbo v1, "ATTENTION: not using partner bookmarks as none were provided"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 167
    :cond_5
    iget-object v0, v4, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 168
    const-string/jumbo v0, "PartnerBookmarksReader"

    const-string/jumbo v1, "ATTENTION: more than one top-level partner bookmarks, ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 172
    :cond_6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v4, v0}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$ReadBookmarksTask;->readBookmarkHierarchy(Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$Bookmark;Ljava/util/HashSet;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 122
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$ReadBookmarksTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 181
    iget-object v1, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$ReadBookmarksTask;->mRootSync:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader$ReadBookmarksTask;->this$0:Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->onBookmarksRead()V

    .line 183
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
