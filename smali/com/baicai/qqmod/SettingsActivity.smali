.class public Lcom/baicai/qqmod/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"


# static fields
.field private static final C_BG_CARD:I = -0xa0a0b

.field private static final C_BG_PAGE:I = -0x1

.field private static final C_BTN_STROKE:I = -0xe5e5e6

.field private static final C_STROKE:I = -0x19191a

.field private static final C_SUB:I = -0x777778

.field private static final C_SW_OFF:I = -0x29292a

.field private static final C_SW_ON:I = -0xe5e5e6

.field private static final C_TEXT:I = -0xe5e5e6

.field private static final GENERAL:[[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$-GFO2WcxQHOe1JV1e0saAk2tj5Q(Lcom/baicai/qqmod/SettingsActivity;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 53
    const/4 v0, 0x1

    new-array v1, v0, [[Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "pokeNoCoolDown"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "\u65e0\u9650\u6233\u4e00\u6233"

    aput-object v3, v2, v0

    aput-object v2, v1, v4

    sput-object v1, Lcom/baicai/qqmod/SettingsActivity;->GENERAL:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static addRow(Landroid/widget/LinearLayout;Landroid/content/Context;Ljava/lang/String;Landroid/widget/Switch;)V
    .locals 4

    .line 175
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 176
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 177
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    const v1, -0x19191a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 180
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/baicai/qqmod/SettingsActivity;->switchRow(Landroid/content/Context;Ljava/lang/String;Landroid/widget/Switch;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 183
    return-void
.end method

.method private static applySwitchStyle(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 4

    const-string v0, "#07C160"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "#3A3A3C"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const v2, 0x10100a0

    filled-new-array {v2}, [I

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [I

    filled-new-array {v2, v3}, [[I

    move-result-object v2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    const/4 v0, -0x1

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static buildUi(Landroid/content/Context;Ljava/lang/Runnable;)Landroid/view/ViewGroup;
    .locals 16

    .line 70
    move-object/from16 v0, p0

    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 71
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 72
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 73
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 74
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 75
    const/16 v5, 0x14

    invoke-static {v0, v5}, Lcom/baicai/qqmod/SettingsActivity;->dp(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v0, v5}, Lcom/baicai/qqmod/SettingsActivity;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-static {v0, v5}, Lcom/baicai/qqmod/SettingsActivity;->dp(Landroid/content/Context;I)I

    move-result v8

    invoke-static {v0, v5}, Lcom/baicai/qqmod/SettingsActivity;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v6, v7, v8, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 76
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 81
    const-string v6, "Qcai\u6269\u5c55\u529f\u80fd\u5305"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const/high16 v6, 0x41b00000    # 22.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 83
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 84
    const v6, -0xe5e5e6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    const/4 v7, 0x2

    invoke-static {v0, v7}, Lcom/baicai/qqmod/SettingsActivity;->dp(Landroid/content/Context;I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v9, v9, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 86
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 89
    const-string v8, "\u6a21\u5757\u8bbe\u7f6e"

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const/high16 v8, 0x41500000    # 13.0f

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 91
    const v8, -0x777778

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    const/16 v8, 0x10

    invoke-static {v0, v8}, Lcom/baicai/qqmod/SettingsActivity;->dp(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v5, v9, v9, v9, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 93
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    const-string v5, "\u901a\u7528"

    invoke-static {v0, v5}, Lcom/baicai/qqmod/SettingsActivity;->sectionHeader(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    invoke-static {v0}, Lcom/baicai/qqmod/SettingsActivity;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 98
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 99
    sget-object v10, Lcom/baicai/qqmod/SettingsActivity;->GENERAL:[[Ljava/lang/String;

    array-length v11, v10

    move v12, v9

    :goto_0
    if-ge v12, v11, :cond_0

    aget-object v13, v10, v12

    .line 100
    new-instance v14, Landroid/widget/Switch;

    invoke-direct {v14, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 101
    aget-object v15, v13, v9

    invoke-static {v15, v4}, Lcom/baicai/qqmod/Config;->isEnabled(Ljava/lang/String;Z)Z

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/Switch;->setChecked(Z)V

    .line 102
    invoke-static {v0, v14}, Lcom/baicai/qqmod/SettingsActivity;->applySwitchStyle(Landroid/content/Context;Landroid/widget/Switch;)V

    .line 103
    aget-object v15, v13, v4

    invoke-static {v5, v0, v15, v14}, Lcom/baicai/qqmod/SettingsActivity;->addRow(Landroid/widget/LinearLayout;Landroid/content/Context;Ljava/lang/String;Landroid/widget/Switch;)V

    .line 104
    aget-object v13, v13, v9

    invoke-interface {v8, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/baicai/qqmod/SettingsActivity$Toggle;

    invoke-direct {v2, v13, v0}, Lcom/baicai/qqmod/SettingsActivity$Toggle;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v14, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 99
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    const-string v4, "\u8bed\u97f3"

    invoke-static {v0, v4}, Lcom/baicai/qqmod/SettingsActivity;->sectionHeader(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    invoke-static {v0}, Lcom/baicai/qqmod/SettingsActivity;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 111
    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-static {}, Lcom/baicai/qqmod/Config;->isVoiceForwardEnabled()Z

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/Switch;->setChecked(Z)V

    .line 113
    invoke-static {v0, v5}, Lcom/baicai/qqmod/SettingsActivity;->applySwitchStyle(Landroid/content/Context;Landroid/widget/Switch;)V

    new-instance v2, Lcom/baicai/qqmod/SettingsActivity$Toggle;

    invoke-direct {v2, v9, v0}, Lcom/baicai/qqmod/SettingsActivity$Toggle;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 114
    const-string v10, "\u8bed\u97f3\u8f6c\u53d1"

    invoke-static {v4, v0, v10, v5}, Lcom/baicai/qqmod/SettingsActivity;->addRow(Landroid/widget/LinearLayout;Landroid/content/Context;Ljava/lang/String;Landroid/widget/Switch;)V

    .line 115
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    return-object v1
.end method

.method private static card(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 5

    .line 166
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 167
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    const v3, -0xa0a0b

    const v4, -0x19191a

    invoke-static {p0, v3, v4, v1, v2}, Lcom/baicai/qqmod/SettingsActivity;->rounded(Landroid/content/Context;IIIF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 169
    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/baicai/qqmod/SettingsActivity;->dp(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x4

    invoke-static {p0, v3}, Lcom/baicai/qqmod/SettingsActivity;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p0, v1}, Lcom/baicai/qqmod/SettingsActivity;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p0, v3}, Lcom/baicai/qqmod/SettingsActivity;->dp(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, v2, v4, v1, p0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 170
    return-object v0
.end method

.method private static dp(Landroid/content/Context;I)I
    .locals 0

    .line 220
    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method static synthetic lambda$buildUi$0(Ljava/util/Map;Landroid/widget/Switch;Landroid/content/Context;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 1

    .line 129
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 130
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/widget/Switch;

    invoke-virtual {p4}, Landroid/widget/Switch;->isChecked()Z

    move-result p4

    invoke-static {v0, p4}, Lcom/baicai/qqmod/Config;->setEnabled(Ljava/lang/String;Z)V

    .line 131
    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p0

    invoke-static {p0}, Lcom/baicai/qqmod/Config;->setVoiceForwardEnabled(Z)V

    .line 133
    const-string p0, "\u5df2\u4fdd\u5b58\uff0c\u7acb\u5373\u751f\u6548"

    const/4 p1, 0x0

    invoke-static {p2, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 134
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 135
    :cond_1
    return-void
.end method

.method private static pill(Landroid/content/Context;III)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 155
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 156
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 157
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 158
    if-lez p3, :cond_0

    invoke-virtual {v0, p3, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 160
    :cond_0
    const/16 p1, 0x19

    invoke-static {p0, p1}, Lcom/baicai/qqmod/SettingsActivity;->dp(Landroid/content/Context;I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 161
    return-object v0
.end method

.method private static rounded(Landroid/content/Context;IIIF)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 145
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 146
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 147
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 148
    if-lez p3, :cond_0

    invoke-virtual {v0, p3, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 149
    :cond_0
    float-to-int p1, p4

    invoke-static {p0, p1}, Lcom/baicai/qqmod/SettingsActivity;->dp(Landroid/content/Context;I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 150
    return-object v0
.end method

.method private static sectionHeader(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 2

    .line 186
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 187
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    const/high16 p1, 0x41600000    # 14.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 189
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 190
    const p1, -0xe5e5e6

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    const/16 p1, 0x12

    invoke-static {p0, p1}, Lcom/baicai/qqmod/SettingsActivity;->dp(Landroid/content/Context;I)I

    move-result p1

    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/baicai/qqmod/SettingsActivity;->dp(Landroid/content/Context;I)I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 192
    return-object v0
.end method

.method private static switchRow(Landroid/content/Context;Ljava/lang/String;Landroid/widget/Switch;)Landroid/widget/LinearLayout;
    .locals 4

    .line 196
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 197
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 198
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 199
    const/16 v2, 0x38

    invoke-static {p0, v2}, Lcom/baicai/qqmod/SettingsActivity;->dp(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 200
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 201
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    const/high16 p0, 0x41800000    # 16.0f

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 203
    const p0, -0xe5e5e6

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p1, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, p1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 206
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    new-instance p1, Lcom/baicai/qqmod/SettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/baicai/qqmod/SettingsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/baicai/qqmod/SettingsActivity;)V

    invoke-static {p0, p1}, Lcom/baicai/qqmod/SettingsActivity;->buildUi(Landroid/content/Context;Ljava/lang/Runnable;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baicai/qqmod/SettingsActivity;->setContentView(Landroid/view/View;)V

    .line 62
    return-void
.end method
