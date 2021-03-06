.class public Lorg/chromium/content/browser/WebActionModeCallback;
.super Ljava/lang/Object;
.source "WebActionModeCallback.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# static fields
.field public static final MENU_ITEM_PROCESS_TEXT:I = 0x4

.field public static final MENU_ITEM_SHARE:I = 0x1

.field public static final MENU_ITEM_WEB_SEARCH:I = 0x2


# instance fields
.field protected final mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

.field private final mContext:Landroid/content/Context;

.field private mEditable:Z

.field private mIsDestroyed:Z

.field private mIsInsertion:Z

.field private mIsPasswordType:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mContext:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    .line 130
    return-void
.end method

.method private canPaste()Z
    .locals 2

    .prologue
    .line 267
    invoke-virtual {p0}, Lorg/chromium/content/browser/WebActionModeCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 269
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    return v0
.end method

.method private createActionMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 168
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lorg/chromium/content/R$menu;->select_action_menu:I

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mIsInsertion:Z

    if-eqz v0, :cond_0

    .line 178
    sget v0, Lorg/chromium/content/R$id;->select_action_menu_select_all:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 179
    sget v0, Lorg/chromium/content/R$id;->select_action_menu_cut:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 180
    sget v0, Lorg/chromium/content/R$id;->select_action_menu_copy:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 181
    sget v0, Lorg/chromium/content/R$id;->select_action_menu_share:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 182
    sget v0, Lorg/chromium/content/R$id;->select_action_menu_web_search:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 210
    :goto_1
    return-void

    .line 174
    :catch_0
    move-exception v0

    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lorg/chromium/content/browser/WebActionModeCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/chromium/content/R$menu;->select_action_menu:I

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 186
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mEditable:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/chromium/content/browser/WebActionModeCallback;->canPaste()Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    :cond_1
    sget v0, Lorg/chromium/content/R$id;->select_action_menu_paste:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 190
    :cond_2
    iget-boolean v0, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mEditable:Z

    if-nez v0, :cond_3

    .line 191
    sget v0, Lorg/chromium/content/R$id;->select_action_menu_cut:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 194
    :cond_3
    iget-boolean v0, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mEditable:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;->isSelectActionModeAllowed(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 195
    :cond_4
    sget v0, Lorg/chromium/content/R$id;->select_action_menu_share:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 198
    :cond_5
    iget-boolean v0, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mEditable:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    invoke-interface {v0}, Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;->isSelectActionModeAllowed(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 200
    :cond_6
    sget v0, Lorg/chromium/content/R$id;->select_action_menu_web_search:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 203
    :cond_7
    iget-boolean v0, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mIsPasswordType:Z

    if-eqz v0, :cond_8

    .line 204
    sget v0, Lorg/chromium/content/R$id;->select_action_menu_copy:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 205
    sget v0, Lorg/chromium/content/R$id;->select_action_menu_cut:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1

    .line 209
    :cond_8
    invoke-direct {p0, p2}, Lorg/chromium/content/browser/WebActionModeCallback;->initializeTextProcessingMenu(Landroid/view/Menu;)V

    goto :goto_1
.end method

.method private createProcessTextIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 295
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    invoke-interface {v0}, Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;->isSelectionEditable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 301
    :goto_0
    invoke-direct {p0}, Lorg/chromium/content/browser/WebActionModeCallback;->createProcessTextIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extra.PROCESS_TEXT_READONLY"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 300
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeTextProcessingMenu(Landroid/view/Menu;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 276
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;->isSelectActionModeAllowed(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    :cond_0
    return-void

    .line 281
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/WebActionModeCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 282
    invoke-direct {p0}, Lorg/chromium/content/browser/WebActionModeCallback;->createProcessTextIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 284
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 285
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 286
    invoke-virtual {p0}, Lorg/chromium/content/browser/WebActionModeCallback;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 287
    sget v5, Lorg/chromium/content/R$id;->select_action_menu_text_processing_menus:I

    invoke-interface {p1, v5, v2, v1, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/WebActionModeCallback;->createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 284
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 214
    iget-boolean v1, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mIsDestroyed:Z

    if-eqz v1, :cond_0

    .line 243
    :goto_0
    return v0

    .line 216
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 217
    invoke-interface {p2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    .line 219
    sget v3, Lorg/chromium/content/R$id;->select_action_menu_select_all:I

    if-ne v1, v3, :cond_1

    .line 220
    iget-object v1, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    invoke-interface {v1}, Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;->selectAll()V

    goto :goto_0

    .line 221
    :cond_1
    sget v3, Lorg/chromium/content/R$id;->select_action_menu_cut:I

    if-ne v1, v3, :cond_2

    .line 222
    iget-object v1, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    invoke-interface {v1}, Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;->cut()V

    .line 223
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 224
    :cond_2
    sget v3, Lorg/chromium/content/R$id;->select_action_menu_copy:I

    if-ne v1, v3, :cond_3

    .line 225
    iget-object v1, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    invoke-interface {v1}, Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;->copy()V

    .line 226
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 227
    :cond_3
    sget v3, Lorg/chromium/content/R$id;->select_action_menu_paste:I

    if-ne v1, v3, :cond_4

    .line 228
    iget-object v1, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    invoke-interface {v1}, Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;->paste()V

    .line 229
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 230
    :cond_4
    sget v3, Lorg/chromium/content/R$id;->select_action_menu_share:I

    if-ne v1, v3, :cond_5

    .line 231
    iget-object v1, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    invoke-interface {v1}, Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;->share()V

    .line 232
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 233
    :cond_5
    sget v3, Lorg/chromium/content/R$id;->select_action_menu_web_search:I

    if-ne v1, v3, :cond_6

    .line 234
    iget-object v1, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    invoke-interface {v1}, Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;->search()V

    .line 235
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 236
    :cond_6
    sget v1, Lorg/chromium/content/R$id;->select_action_menu_text_processing_menus:I

    if-ne v2, v1, :cond_7

    .line 237
    iget-object v1, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    invoke-interface {p2}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;->processText(Landroid/content/Intent;)V

    goto :goto_0

    .line 241
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-virtual {p0}, Lorg/chromium/content/browser/WebActionModeCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/WebActionModeCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lorg/chromium/content/R$string;->actionbar_textselection_title:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    invoke-interface {v0}, Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;->isSelectionEditable()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mEditable:Z

    .line 143
    iget-object v0, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    invoke-interface {v0}, Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;->isSelectionPassword()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mIsPasswordType:Z

    .line 144
    iget-object v0, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    invoke-interface {v0}, Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;->isInsertion()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mIsInsertion:Z

    .line 145
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/WebActionModeCallback;->createActionMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 146
    const/4 v0, 0x1

    return v0

    :cond_0
    move-object v0, v1

    .line 138
    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mIsDestroyed:Z

    .line 249
    iget-object v0, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    invoke-interface {v0}, Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;->onDestroyActionMode()V

    .line 250
    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    invoke-interface {v0, p3}, Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;->onGetContentRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    .prologue
    .line 151
    iget-object v0, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    invoke-interface {v0}, Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;->isSelectionEditable()Z

    move-result v0

    .line 152
    iget-object v1, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    invoke-interface {v1}, Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;->isSelectionPassword()Z

    move-result v1

    .line 153
    iget-object v2, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mActionHandler:Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;

    invoke-interface {v2}, Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;->isInsertion()Z

    move-result v2

    .line 154
    iget-boolean v3, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mEditable:Z

    if-ne v3, v0, :cond_0

    iget-boolean v3, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mIsPasswordType:Z

    if-ne v3, v1, :cond_0

    iget-boolean v3, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mIsInsertion:Z

    if-eq v3, v2, :cond_1

    .line 156
    :cond_0
    iput-boolean v0, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mEditable:Z

    .line 157
    iput-boolean v1, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mIsPasswordType:Z

    .line 158
    iput-boolean v2, p0, Lorg/chromium/content/browser/WebActionModeCallback;->mIsInsertion:Z

    .line 159
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    .line 160
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/WebActionModeCallback;->createActionMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 161
    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
