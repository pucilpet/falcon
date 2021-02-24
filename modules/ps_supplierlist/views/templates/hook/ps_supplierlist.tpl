{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}

{extends file="components/left-column-list-group.tpl"}

{if $suppliers}
{block name='list_group_extra_class'}mb-lg-3{/block}

  {block name='list_group_title'}
    {if $display_link_supplier}<a href="{$page_link}" class="text-reset" title="{l s='Suppliers' d='Shop.Theme.Catalog'}">{/if}
      {l s='Suppliers' d='Shop.Theme.Catalog'}
    {if $display_link_supplier}</a>{/if}
  {/block}

  {block name='list_group_body'}
    {include file="module:ps_supplierlist/views/templates/_partials/$supplier_display_type.tpl" suppliers=$suppliers}
  {/block}
{else}
  {block name='list_group'}{/block}
{/if}
