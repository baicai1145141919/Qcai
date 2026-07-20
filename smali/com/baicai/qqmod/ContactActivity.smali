.class public Lcom/baicai/qqmod/ContactActivity;
.super Landroid/app/Activity;
.source "ContactActivity.java"


.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    .catch Ljava/lang/Throwable; {:try_start .. :try_end} :catch_t

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start

    .line 20
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 22
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v4, 0x14

    invoke-static {p0, v4}, Lcom/baicai/qqmod/ContactActivity;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-static {p0, v4}, Lcom/baicai/qqmod/ContactActivity;->dp(Landroid/content/Context;I)I

    move-result v6

    invoke-static {p0, v4}, Lcom/baicai/qqmod/ContactActivity;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-static {p0, v4}, Lcom/baicai/qqmod/ContactActivity;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v5, v6, v7, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 23
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "Qcai\u6269\u5c55\u529f\u80fd\u5305"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41b00000    # 22.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v5, -0xe5e5e6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v6, 0x2

    invoke-static {p0, v6}, Lcom/baicai/qqmod/ContactActivity;->dp(Landroid/content/Context;I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v8, v8, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 28
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v7, "\u5f00\u53d1\u8005\u8054\u7cfb\u65b9\u5f0f"

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x41500000    # 13.0f

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const v7, -0x777778

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v7, 0x10

    invoke-static {p0, v7}, Lcom/baicai/qqmod/ContactActivity;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v4, v8, v8, v8, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 31
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const v6, -0xa0a0b

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v6, 0x10

    invoke-static {p0, v6}, Lcom/baicai/qqmod/ContactActivity;->dp(Landroid/content/Context;I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v5, 0x10

    invoke-static {p0, v5}, Lcom/baicai/qqmod/ContactActivity;->dp(Landroid/content/Context;I)I

    move-result v6

    const/16 v7, 0xc

    invoke-static {p0, v7}, Lcom/baicai/qqmod/ContactActivity;->dp(Landroid/content/Context;I)I

    move-result v9

    invoke-static {p0, v5}, Lcom/baicai/qqmod/ContactActivity;->dp(Landroid/content/Context;I)I

    move-result v10

    invoke-static {p0, v7}, Lcom/baicai/qqmod/ContactActivity;->dp(Landroid/content/Context;I)I

    move-result v11

    invoke-virtual {v4, v6, v9, v10, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 34

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v7, "点击此处前往作者QQ"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x41700000    # 15.0f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v9, v8}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const v7, 0xff07c160

    invoke-virtual {v9, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v7, 0xc

    invoke-static {p0, v7}, Lcom/baicai/qqmod/ContactActivity;->dp(Landroid/content/Context;I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v9, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v7, 0xc

    invoke-static {p0, v7}, Lcom/baicai/qqmod/ContactActivity;->dp(Landroid/content/Context;I)I

    move-result v9

    const/16 v7, 0xa

    invoke-static {p0, v7}, Lcom/baicai/qqmod/ContactActivity;->dp(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v6, v9, v10, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v7, Lcom/baicai/qqmod/ContactActivity$1;

    invoke-direct {v7, p0}, Lcom/baicai/qqmod/ContactActivity$1;-><init>(Lcom/baicai/qqmod/ContactActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 38

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v7, "点击此处前往作者GitHub"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x41700000    # 15.0f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v9, v8}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const v7, 0xff07c160

    invoke-virtual {v9, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v7, 0xc

    invoke-static {p0, v7}, Lcom/baicai/qqmod/ContactActivity;->dp(Landroid/content/Context;I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v9, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v7, 0xc

    invoke-static {p0, v7}, Lcom/baicai/qqmod/ContactActivity;->dp(Landroid/content/Context;I)I

    move-result v9

    const/16 v7, 0xa

    invoke-static {p0, v7}, Lcom/baicai/qqmod/ContactActivity;->dp(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v6, v9, v10, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v7, Lcom/baicai/qqmod/ContactActivity$2;

    invoke-direct {v7, p0}, Lcom/baicai/qqmod/ContactActivity$2;-><init>(Lcom/baicai/qqmod/ContactActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 44
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "\u63d0\u793a\uff1a\u70b9\u51fb\u6309\u94ae\u53ef\u590d\u5236\u4f5c\u8005 QQ \u4e2a\u4eba\u4e3b\u9875\u4e0e GitHub \u4ed3\u5e93\u94fe\u63a5\uff0c\u590d\u5236\u540e\u8bf7\u7c98\u8d34\u5230 QQ / \u6d4f\u89c8\u5668\u6253\u5f00"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const v6, -0x777778

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v6, 0x10

    invoke-static {p0, v6}, Lcom/baicai/qqmod/ContactActivity;->dp(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v4, v8, v6, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/baicai/qqmod/ContactActivity;->setContentView(Landroid/view/View;)V

    :try_end
    return-void

    :catch_t
    move-exception v12

    new-instance v13, Landroid/widget/ScrollView;

    invoke-direct {v13, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v13, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v13}, Lcom/baicai/qqmod/ContactActivity;->setContentView(Landroid/view/View;)V

    const-string v0, "QcaiContact"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static dp(Landroid/content/Context;I)I
    .locals 1

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

.method public static openUrlSafe(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "contact"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string v0, "已复制，请粘贴到 QQ / 浏览器打开"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
