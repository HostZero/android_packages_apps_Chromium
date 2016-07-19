.class public Lorg/chromium/chrome/browser/KeyboardShortcuts;
.super Ljava/lang/Object;
.source "KeyboardShortcuts.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatchKeyEvent(Landroid/view/KeyEvent;Lorg/chromium/chrome/browser/ChromeActivity;Z)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 55
    if-nez p2, :cond_2

    .line 56
    const/16 v2, 0x54

    if-eq v1, v2, :cond_0

    const/16 v2, 0x52

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 88
    :cond_1
    :goto_0
    return-object v0

    .line 60
    :cond_2
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 69
    :sswitch_0
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 70
    sget v0, Lorg/chromium/chrome/R$id;->show_menu:I

    invoke-virtual {p1, v0, v2}, Lorg/chromium/chrome/browser/ChromeActivity;->onMenuOrKeyboardAction(IZ)Z

    .line 72
    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 62
    :sswitch_1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 63
    sget v0, Lorg/chromium/chrome/R$id;->focus_url_bar:I

    invoke-virtual {p1, v0, v2}, Lorg/chromium/chrome/browser/ChromeActivity;->onMenuOrKeyboardAction(IZ)Z

    .line 67
    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 85
    :sswitch_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 60
    nop

    :sswitch_data_0
    .sparse-switch
        0x52 -> :sswitch_0
        0x54 -> :sswitch_1
        0xaa -> :sswitch_2
        0xab -> :sswitch_2
        0xac -> :sswitch_2
        0xad -> :sswitch_2
        0xb1 -> :sswitch_2
        0xb2 -> :sswitch_2
        0xb3 -> :sswitch_2
        0xb4 -> :sswitch_2
        0xb5 -> :sswitch_2
        0xb6 -> :sswitch_2
    .end sparse-switch
.end method

.method private static getMetaState(Landroid/view/KeyEvent;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, -0x80000000

    :goto_0
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v2, 0x40000000    # 2.0f

    :goto_1
    or-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v1, 0x20000000

    :cond_0
    or-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method private static isGamepadAPIActive(Lorg/chromium/chrome/browser/ChromeActivity;)Z
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeActivity;->getCurrentContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->isGamepadAPIActive()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onKeyDown(Landroid/view/KeyEvent;Lorg/chromium/chrome/browser/ChromeActivity;ZZ)Z
    .locals 9

    .prologue
    const/high16 v8, 0x20000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 107
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 108
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v1

    .line 258
    :goto_0
    return v0

    .line 109
    :cond_1
    invoke-static {v0}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    invoke-static {p1}, Lorg/chromium/chrome/browser/KeyboardShortcuts;->isGamepadAPIActive(Lorg/chromium/chrome/browser/ChromeActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x85

    if-eq v0, v3, :cond_3

    const/16 v3, 0x87

    if-eq v0, v3, :cond_3

    const/16 v3, 0x8c

    if-eq v0, v3, :cond_3

    const/16 v3, 0x7d

    if-eq v0, v3, :cond_3

    move v0, v1

    .line 116
    goto :goto_0

    .line 119
    :cond_3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->getCurrentTabModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v3

    .line 120
    invoke-interface {v3}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v4

    .line 122
    invoke-static {p0}, Lorg/chromium/chrome/browser/KeyboardShortcuts;->getMetaState(Landroid/view/KeyEvent;)I

    move-result v5

    .line 123
    or-int v6, v0, v5

    .line 125
    sparse-switch v6, :sswitch_data_0

    .line 145
    if-eqz p2, :cond_8

    .line 146
    if-eqz p3, :cond_7

    const/high16 v7, -0x80000000

    if-eq v5, v7, :cond_4

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v5, v7, :cond_7

    .line 147
    :cond_4
    add-int/lit8 v0, v0, -0x7

    .line 148
    if-lez v0, :cond_6

    const/16 v5, 0x8

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-gt v0, v5, :cond_6

    .line 150
    add-int/lit8 v0, v0, -0x1

    invoke-static {v3, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->setIndex(Lorg/chromium/chrome/browser/tabmodel/TabModel;I)V

    move v0, v2

    .line 151
    goto :goto_0

    .line 127
    :sswitch_0
    invoke-interface {v3}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lorg/chromium/chrome/R$id;->new_incognito_tab_menu_id:I

    :goto_1
    invoke-virtual {p1, v0, v1}, Lorg/chromium/chrome/browser/ChromeActivity;->onMenuOrKeyboardAction(IZ)Z

    move v0, v2

    .line 130
    goto :goto_0

    .line 127
    :cond_5
    sget v0, Lorg/chromium/chrome/R$id;->new_tab_menu_id:I

    goto :goto_1

    .line 132
    :sswitch_1
    sget v0, Lorg/chromium/chrome/R$id;->new_tab_menu_id:I

    invoke-virtual {p1, v0, v1}, Lorg/chromium/chrome/browser/ChromeActivity;->onMenuOrKeyboardAction(IZ)Z

    move v0, v2

    .line 133
    goto :goto_0

    .line 135
    :sswitch_2
    sget v0, Lorg/chromium/chrome/R$id;->new_incognito_tab_menu_id:I

    invoke-virtual {p1, v0, v1}, Lorg/chromium/chrome/browser/ChromeActivity;->onMenuOrKeyboardAction(IZ)Z

    move v0, v2

    .line 136
    goto :goto_0

    .line 141
    :sswitch_3
    sget v0, Lorg/chromium/chrome/R$id;->show_menu:I

    invoke-virtual {p1, v0, v1}, Lorg/chromium/chrome/browser/ChromeActivity;->onMenuOrKeyboardAction(IZ)Z

    move v0, v2

    .line 142
    goto/16 :goto_0

    .line 152
    :cond_6
    const/16 v5, 0x9

    if-ne v0, v5, :cond_7

    if-eqz v4, :cond_7

    .line 154
    add-int/lit8 v0, v4, -0x1

    invoke-static {v3, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->setIndex(Lorg/chromium/chrome/browser/tabmodel/TabModel;I)V

    move v0, v2

    .line 155
    goto/16 :goto_0

    .line 159
    :cond_7
    sparse-switch v6, :sswitch_data_1

    :cond_8
    move v0, v1

    .line 258
    goto/16 :goto_0

    .line 163
    :sswitch_4
    if-eqz p3, :cond_9

    if-le v4, v2, :cond_9

    .line 164
    invoke-interface {v3}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->index()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v4

    invoke-static {v3, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->setIndex(Lorg/chromium/chrome/browser/tabmodel/TabModel;I)V

    :cond_9
    move v0, v2

    .line 166
    goto/16 :goto_0

    .line 170
    :sswitch_5
    if-eqz p3, :cond_a

    if-le v4, v2, :cond_a

    .line 171
    invoke-interface {v3}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->index()I

    move-result v0

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    rem-int/2addr v0, v4

    invoke-static {v3, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->setIndex(Lorg/chromium/chrome/browser/tabmodel/TabModel;I)V

    :cond_a
    move v0, v2

    .line 173
    goto/16 :goto_0

    .line 177
    :sswitch_6
    invoke-static {v3}, Lorg/chromium/chrome/browser/tabmodel/TabModelUtils;->closeCurrentTab(Lorg/chromium/chrome/browser/tabmodel/TabModel;)Z

    move v0, v2

    .line 178
    goto/16 :goto_0

    .line 184
    :sswitch_7
    sget v0, Lorg/chromium/chrome/R$id;->find_in_page_id:I

    invoke-virtual {p1, v0, v1}, Lorg/chromium/chrome/browser/ChromeActivity;->onMenuOrKeyboardAction(IZ)Z

    move v0, v2

    .line 185
    goto/16 :goto_0

    .line 189
    :sswitch_8
    sget v0, Lorg/chromium/chrome/R$id;->focus_url_bar:I

    invoke-virtual {p1, v0, v1}, Lorg/chromium/chrome/browser/ChromeActivity;->onMenuOrKeyboardAction(IZ)Z

    move v0, v2

    .line 190
    goto/16 :goto_0

    .line 192
    :sswitch_9
    sget v0, Lorg/chromium/chrome/R$id;->all_bookmarks_menu_id:I

    invoke-virtual {p1, v0, v1}, Lorg/chromium/chrome/browser/ChromeActivity;->onMenuOrKeyboardAction(IZ)Z

    move v0, v2

    .line 193
    goto/16 :goto_0

    .line 196
    :sswitch_a
    sget v0, Lorg/chromium/chrome/R$id;->bookmark_this_page_id:I

    invoke-virtual {p1, v0, v1}, Lorg/chromium/chrome/browser/ChromeActivity;->onMenuOrKeyboardAction(IZ)Z

    move v0, v2

    .line 197
    goto/16 :goto_0

    .line 199
    :sswitch_b
    sget v0, Lorg/chromium/chrome/R$id;->open_history_menu_id:I

    invoke-virtual {p1, v0, v1}, Lorg/chromium/chrome/browser/ChromeActivity;->onMenuOrKeyboardAction(IZ)Z

    move v0, v2

    .line 200
    goto/16 :goto_0

    .line 202
    :sswitch_c
    sget v0, Lorg/chromium/chrome/R$id;->print_id:I

    invoke-virtual {p1, v0, v1}, Lorg/chromium/chrome/browser/ChromeActivity;->onMenuOrKeyboardAction(IZ)Z

    move v0, v2

    .line 203
    goto/16 :goto_0

    .line 209
    :sswitch_d
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->getCurrentContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->zoomIn()Z

    :cond_b
    move v0, v2

    .line 211
    goto/16 :goto_0

    .line 214
    :sswitch_e
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->getCurrentContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->zoomOut()Z

    :cond_c
    move v0, v2

    .line 216
    goto/16 :goto_0

    .line 218
    :sswitch_f
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->getCurrentContentViewCore()Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->zoomReset()Z

    :cond_d
    move v0, v2

    .line 220
    goto/16 :goto_0

    .line 225
    :sswitch_10
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_e

    .line 227
    and-int v1, v6, v8

    if-ne v1, v8, :cond_f

    .line 228
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->reloadIgnoringCache()V

    .line 233
    :goto_2
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->focusLocationBarByDefault()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 236
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->getToolbarManager()Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarManager;->revertLocationBarChanges()V

    :cond_e
    :goto_3
    move v0, v2

    .line 241
    goto/16 :goto_0

    .line 230
    :cond_f
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->reload()V

    goto :goto_2

    .line 238
    :cond_10
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->requestFocus()V

    goto :goto_3

    .line 243
    :sswitch_11
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->goBack()V

    :cond_11
    move v0, v2

    .line 245
    goto/16 :goto_0

    .line 249
    :sswitch_12
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->canGoForward()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->goForward()V

    :cond_12
    move v0, v2

    .line 251
    goto/16 :goto_0

    .line 253
    :sswitch_13
    sget v0, Lorg/chromium/chrome/R$id;->help_id:I

    invoke-virtual {p1, v0, v1}, Lorg/chromium/chrome/browser/ChromeActivity;->onMenuOrKeyboardAction(IZ)Z

    move v0, v2

    .line 254
    goto/16 :goto_0

    .line 125
    :sswitch_data_0
    .sparse-switch
        -0x7fffffd6 -> :sswitch_1
        -0x7fffffd0 -> :sswitch_0
        -0x5fffffd6 -> :sswitch_2
        0x64 -> :sswitch_3
        0x8c -> :sswitch_3
        0x40000021 -> :sswitch_3
        0x40000022 -> :sswitch_3
    .end sparse-switch

    .line 159
    :sswitch_data_1
    .sparse-switch
        -0x7ffffff9 -> :sswitch_f
        -0x7fffffe0 -> :sswitch_a
        -0x7fffffde -> :sswitch_7
        -0x7fffffdd -> :sswitch_7
        -0x7fffffdc -> :sswitch_b
        -0x7fffffd8 -> :sswitch_8
        -0x7fffffd4 -> :sswitch_c
        -0x7fffffd2 -> :sswitch_10
        -0x7fffffcd -> :sswitch_6
        -0x7fffffc3 -> :sswitch_4
        -0x7fffffbb -> :sswitch_e
        -0x7fffffba -> :sswitch_d
        -0x7fffffaf -> :sswitch_d
        -0x7fffffa4 -> :sswitch_5
        -0x7fffffa3 -> :sswitch_4
        -0x7fffff7a -> :sswitch_6
        -0x5fffffe2 -> :sswitch_9
        -0x5fffffdd -> :sswitch_7
        -0x5fffffd2 -> :sswitch_10
        -0x5fffffc3 -> :sswitch_5
        -0x5fffffba -> :sswitch_d
        -0x5fffffb4 -> :sswitch_13
        -0x5fffffaf -> :sswitch_d
        0x61 -> :sswitch_6
        0x63 -> :sswitch_8
        0x66 -> :sswitch_5
        0x67 -> :sswitch_4
        0x6c -> :sswitch_12
        0x7d -> :sswitch_12
        0x85 -> :sswitch_7
        0x87 -> :sswitch_10
        0xa8 -> :sswitch_d
        0xa9 -> :sswitch_e
        0xae -> :sswitch_a
        0x20000085 -> :sswitch_7
        0x20000087 -> :sswitch_10
        0x40000015 -> :sswitch_11
        0x40000016 -> :sswitch_12
        0x40000020 -> :sswitch_8
    .end sparse-switch
.end method
