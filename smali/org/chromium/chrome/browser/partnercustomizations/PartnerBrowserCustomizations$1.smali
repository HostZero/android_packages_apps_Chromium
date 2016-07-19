.class final Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$1;
.super Landroid/os/AsyncTask;
.source "PartnerBrowserCustomizations.java"


# instance fields
.field private mDisablePartnerBookmarksShim:Z

.field private mHomepageUriChanged:Z

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private onFinalized()V
    .locals 2

    .prologue
    .line 216
    const/4 v0, 0x1

    # setter for: Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sIsInitialized:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->access$502(Z)Z

    .line 218
    # getter for: Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sInitializeAsyncCallbacks:Ljava/util/List;
    invoke-static {}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->access$600()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 219
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 221
    :cond_0
    # getter for: Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sInitializeAsyncCallbacks:Ljava/util/List;
    invoke-static {}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->access$600()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 223
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$1;->mHomepageUriChanged:Z

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/partnercustomizations/HomepageManager;->notifyHomepageUpdated()V

    .line 228
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$1;->mDisablePartnerBookmarksShim:Z

    if-eqz v0, :cond_2

    .line 229
    invoke-static {}, Lorg/chromium/chrome/browser/partnerbookmarks/PartnerBookmarksReader;->disablePartnerBookmarksEditing()V

    .line 231
    :cond_2
    return-void
.end method

.method private refreshBookmarksEditingDisabled()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 157
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 158
    const-string/jumbo v1, "disablebookmarksediting"

    invoke-static {v1}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->buildQueryUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ne v0, v6, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v6, :cond_3

    move v0, v6

    .line 164
    :goto_0
    # getter for: Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sBookmarksEditingDisabled:Z
    invoke-static {}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->access$200()Z

    move-result v2

    if-eq v0, v2, :cond_0

    .line 165
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$1;->mDisablePartnerBookmarksShim:Z

    .line 167
    :cond_0
    # setter for: Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sBookmarksEditingDisabled:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->access$202(Z)Z

    .line 169
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v7

    .line 163
    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    const-string/jumbo v1, "PartnerBrowserProvider"

    const-string/jumbo v2, "Partner disable bookmarks editing read failed : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private refreshHomepage()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 122
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 123
    const-string/jumbo v1, "homepage"

    invoke-static {v1}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->buildQueryUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-ne v1, v6, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$1;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 127
    # getter for: Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sHomepage:Ljava/lang/String;
    invoke-static {}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    # getter for: Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sHomepage:Ljava/lang/String;
    invoke-static {}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 129
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$1;->mHomepageUriChanged:Z

    .line 131
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sHomepage:Ljava/lang/String;
    invoke-static {v1}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_3
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    const-string/jumbo v1, "PartnerBrowserProvider"

    const-string/jumbo v2, "Partner homepage provider URL read failed : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private refreshIncognitoModeDisabled()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 141
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 142
    const-string/jumbo v1, "disableincognitomode"

    invoke-static {v1}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->buildQueryUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ne v0, v6, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v6, :cond_2

    move v0, v6

    :goto_0
    # setter for: Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sIncognitoModeDisabled:Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->access$102(Z)Z

    .line 149
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v7

    .line 147
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    const-string/jumbo v1, "PartnerBrowserProvider"

    const-string/jumbo v2, "Partner disable incognito mode read failed : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 178
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    # getter for: Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sProviderAuthority:Ljava/lang/String;
    invoke-static {}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->access$300()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 180
    if-nez v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-object v4

    .line 182
    :cond_1
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    # getter for: Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sIgnoreBrowserProviderSystemPackageCheck:Z
    invoke-static {}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->access$400()Z

    move-result v1

    if-nez v1, :cond_2

    .line 184
    const-string/jumbo v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Browser Cutomizations content provider package, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", is not a system package. This could be a malicious attepment from a third party app, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "so skip reading the browser content provider."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    const-string/jumbo v1, "PartnerBrowserProvider"

    const-string/jumbo v2, "Fetching partner customizations failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 191
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-direct {p0}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$1;->refreshIncognitoModeDisabled()V

    .line 194
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-direct {p0}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$1;->refreshBookmarksEditingDisabled()V

    .line 197
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    invoke-direct {p0}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$1;->refreshHomepage()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected final bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 116
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$1;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected final onCancelled(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$1;->onFinalized()V

    .line 213
    return-void
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 116
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected final onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$1;->onFinalized()V

    .line 208
    return-void
.end method
